import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:tramiteo/features/rss/rss_model.dart';

@immutable
class WebfeedState {
  final AsyncValue<List<RssPost>> rssPosts;
  final RefreshController refreshController;

  const WebfeedState({
    required this.rssPosts,
    required this.refreshController,
  });

  WebfeedState copyWith({
    AsyncValue<List<RssPost>>? rssPosts,
    RefreshController? refreshController,
  }) {
    return WebfeedState(
      rssPosts: rssPosts ?? this.rssPosts,
      refreshController: refreshController ?? this.refreshController,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is WebfeedState;

  @override
  int get hashCode => rssPosts.hashCode;
}
