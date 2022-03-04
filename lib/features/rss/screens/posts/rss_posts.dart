import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../../core/failure.dart';
import '../../../../../../core/widgets/failure_screen.dart';
import '../../../../../../core/widgets/webview/webview_model.dart';
import '../../webfeed_controller.dart';
import 'list_feed_item.dart';

class RssPosts extends ConsumerWidget {
  const RssPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novedades y Consejos'),
      ),
      body: ref.watch(webfeedControllerProvider).rssPosts.when(
        data: (rssPosts) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmartRefresher(
                enablePullDown: true,
                enablePullUp: false,
                header: const ClassicHeader(), //const WaterDropHeader(),
                footer: CustomFooter(
                  builder: (_, LoadStatus? mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = const Text("pull up load");
                    } else if (mode == LoadStatus.loading) {
                      body = const CupertinoActivityIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = const Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = const Text("release to load more");
                    } else {
                      body = const Text("No more Data");
                    }
                    return SizedBox(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                controller:
                    ref.watch(webfeedControllerProvider).refreshController,
                onRefresh: () async {
                  ref.read(webfeedControllerProvider.notifier).onRefresh();
                },
                // onLoading: () async {
                //   ref.read(webfeedControllerProvider.notifier).onLoading();
                // },
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    color: Colors.black45,
                    indent: 16,
                    endIndent: 16,
                  ),
                  itemCount: rssPosts.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          '/webview',
                          extra: WebviewModel(
                            url: rssPosts[index].link!,
                            title: rssPosts[index].title!,
                          ),
                        );
                      },
                      child: ListFeedItem(rssItem: rssPosts[index]),
                    );
                  },
                ),
              ),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        error: (e, s) {
          if (e is Failure) {
            return FailureScreen(message: e.message);
          }
          return const FailureScreen(
              message: 'Something went wrong on our end');
        },
      ),
    );
  }
}

// ListView.builder(itemBuilder: (_,index){
//           return GestureDetector(
//                     onTap: () => context.push('/post', extra: posts[index]),
//                     child: ListTile(
//                       leading: Image.network(posts[index].imageFeature ??
//                           'http://www.mdvacationclub.com/wp-content/uploads/2018/12/Placeholder-300x300.png'),
//                       title: Text(posts[index].title),
//                       subtitle: Text(posts[index].link),
//                     ),
//                   );
//         }