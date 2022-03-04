import 'package:flutter/foundation.dart';
import 'package:webfeed/webfeed.dart';

@immutable
class RssPost {
  final String? id;
  final String? title;
  final String? link;
  final String? description;
  final DateTime? date;
  final String? image;

  const RssPost({
    this.id,
    this.title,
    this.link,
    this.description,
    this.date,
    this.image,
  });

  RssPost.fromRssItem(RssItem rssItem)
      : id = rssItem.guid,
        title = rssItem.title,
        link = rssItem.link,
        description = rssItem.description,
        date = rssItem.pubDate,
        image = rssItem
            .media?.contents?[0].url; //rssItem.media?.contents?.first.url;
}
