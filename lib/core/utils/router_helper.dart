import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../ads/mobile_ads_manager.dart';

class RouterManager {
  static void push({
    required BuildContext context,
    required WidgetRef ref,
    required String route,
    dynamic extra,
  }) async {
    await ref.read(mobileAdsProvider).showInterstitialAd();
    GoRouter.of(context).push(
      route,
      extra: extra,
    );
  }
}
