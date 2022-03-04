import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:tramiteo/features/rss/rss_model.dart';
import 'package:tramiteo/features/rss/webfeed_repository.dart';

import '../../../../core/failure.dart';

final wordpressServiceProvider = Provider<WebfeedService>((ref) {
  final webfeedRepository = ref.watch(webFeedRepositoryProvider);
  return FeedService(webfeedRepository);
});

abstract class WebfeedService {
  Future<Result<Failure, List<RssPost>>> getRssPosts();
}

class FeedService implements WebfeedService {
  final WebFeedRepository _webfeedRepository;

  FeedService(this._webfeedRepository);

  @override
  Future<Result<Failure, List<RssPost>>> getRssPosts() async {
    try {
      final postEntities = await _webfeedRepository.getRssPosts();
      // final posts = postEntities
      //     .map((postEntity) => PostModel.fromEntity(postEntity))
      //     .toList();
      return Success(postEntities);
    } on Failure catch (failure) {
      return Error(failure);
    }
  }
}
