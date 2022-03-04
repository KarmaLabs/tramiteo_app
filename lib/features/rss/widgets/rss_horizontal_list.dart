import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tramiteo/features/rss/rss_model.dart';

import '../../../../../core/failure.dart';
import '../../../../../core/utils/parser.dart';
import '../../../../../core/utils/router_helper.dart';
import '../../../../../core/widgets/failure_screen.dart';
import '../../../../../core/widgets/header_widget.dart';
import '../../../../../core/widgets/webview/webview_model.dart';
import '../webfeed_controller.dart';

class RssHorizontalView extends ConsumerWidget {
  const RssHorizontalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Expanded(
                    child: HeaderWidget(title: "Novedades y Consejos")),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).push('/rssposts');
                  },
                  child: const Text(
                    "Ver Todo >",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ]),
          ref.watch(webfeedControllerProvider).rssPosts.when(
            data: (rssPosts) {
              return SizedBox(
                height: 150.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          RouterManager.push(
                              context: context,
                              ref: ref,
                              route: '/webview',
                              extra: WebviewModel(
                                url: rssPosts[index].link!,
                                title: rssPosts[index].title!,
                              ));
                        },
                        child: PostCard(
                          rssPosts[index],
                        ),
                      );
                    }),
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
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final RssPost post;
  const PostCard(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Hero(
              tag: post.id!,
              child: Container(
                height: 70.0,
                width: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(post
                          .image!), //post.image!.substring(0, post.image?.indexOf('@@'))),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(blurRadius: 0.0, color: Colors.black87)
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  gradient: const LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          SizedBox(
            width: 130.0,
            height: 35,
            child: AutoSizeText(
              post.title!,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.black,
                  fontFamily: "Sofia",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Icon(
                      Icons.query_builder,
                      size: 18.0,
                      color: Colors.black26,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      Parser.formatDateString(post.date!.toString()),
                      style: const TextStyle(
                          color: Colors.black45,
                          fontFamily: "Sofia",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
