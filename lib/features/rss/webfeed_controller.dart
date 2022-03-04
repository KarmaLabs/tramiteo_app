import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tramiteo/features/rss/webfeed_service.dart';
import 'package:tramiteo/features/rss/webfeed_state.dart';

final webfeedControllerProvider =
    StateNotifierProvider<WebFeedController, WebfeedState>((ref) {
  return WebFeedController(
    WebfeedState(
        rssPosts: const AsyncValue.data([]),
        refreshController: RefreshController(
          initialRefresh: false,
        )),
    ref.watch(wordpressServiceProvider),
  );
});

class WebFeedController extends StateNotifier<WebfeedState> {
  WebFeedController(
    WebfeedState state,
    this._webfeedService,
  ) : super(state) {
    loadRssPosts();
  }

  final WebfeedService _webfeedService;

  Future<void> loadRssPosts() async {
    state = state.copyWith(rssPosts: const AsyncValue.loading());
    final result = await _webfeedService.getRssPosts();

    result.when(
      (error) {
        state = state.copyWith(rssPosts: AsyncValue.error(error));
      },
      (posts) {
        final updatedPosts = AsyncValue.data(posts);
        state = state.copyWith(rssPosts: updatedPosts);
      },
    );
  }

  void onRefresh() async {
    await loadRssPosts();

    if (mounted) {
      state.refreshController.refreshCompleted();
      state.refreshController.resetNoData();
    }
  }
}
