import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tramiteo/features/rss/rss_model.dart';
import 'package:webfeed/webfeed.dart';

import '../../../../core/failure.dart';
import '../../../../main.dart';

final webFeedRepositoryProvider = Provider<WebFeedRepository>((ref) {
  final dio =
      ref.watch(dioProvider('https://rss.app/feeds/')); //https://rss.app/feeds/
  return FeedRepository(dio: dio);
});

abstract class WebFeedRepository {
  Future<List<RssPost>> getRssPosts();
}

class FeedRepository implements WebFeedRepository {
  final Dio dio;

  FeedRepository({required this.dio});

  // List<RssPost> _listRssItemModel = [];
  // List<RssPost> get listRssItemModel => _listRssItemModel;

  @override
  Future<List<RssPost>> getRssPosts() async {
    try {
      final response =
          await dio.get('_B4OQjxamY3evPchU.xml' //'zEX4e4QdfRr0h7OY.xml', //
              );

      RssFeed feed = RssFeed.parse(response.data);
      return feed.items!.map((e) => RssPost.fromRssItem(e)).toList();
    } on DioError catch (e) {
      if (e.error is SocketException) {
        throw Failure(
          message: 'No internet connection',
          exception: e,
        );
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
      );
    }
  }
}
