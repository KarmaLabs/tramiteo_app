import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/material.dart';

import '../../../../../../core/utils/parser.dart';
import '../../../../../../core/widgets/network_image.dart';
import '../../rss_model.dart';

class ListFeedItem extends StatelessWidget {
  final RssPost rssItem;

  const ListFeedItem({required this.rssItem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        horizontalTitleGap: 12,
        visualDensity: VisualDensity.standard,
        title: AutoSizeText(
          rssItem.title!,
          maxLines: 3,
          minFontSize: 12,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.query_builder,
              size: 14.0,
              color: Colors.black26,
            ),
            const SizedBox(
              width: 2.0,
            ),
            Expanded(
              child: AutoSizeText(
                Parser.formatDateString(rssItem.date!.toString()) +
                    ' / ' +
                    Parser.getDomain(rssItem.link!),
                maxLines: 1,
                minFontSize: 10,
                maxFontSize: 16,
                style: const TextStyle(
                    color: Colors.black45,
                    fontFamily: "Sofia",
                    //fontSize: 10.0,
                    fontWeight: FontWeight.w300),
              ),
            ),
            // Text(
            //   Parser.getDomain(rssItem!.link!),
            //   maxLines: 1,
            //   style: TextStyle(
            //     fontSize: 10,
            //     color: Colors.black45,
            //     fontFamily: "Sofia",
            //     fontWeight: FontWeight.w300,
            //   ),
            //   textAlign: TextAlign.right,
            // ),
          ],
        ),
        //subtitle: Text(Parser.getDomain(rssItem!.link!)),
        isThreeLine: true,
        // trailing: feedType == FeedType.news
        //     ? FavoritesButtonView(
        //         rssItem: rssItem,
        //         size: 22,
        //         color: Colors.black54,
        //       )
        //     : DeleteItemFeedButton(
        //         rssItem: rssItem,
        //       ),
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: SizedBox(
            width: 80,
            height: 80,
            child: PNetworkImage(
              rssItem.image!,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
