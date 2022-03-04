import 'package:dio/dio.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'core/ads/mobile_ads_manager.dart';
import 'core/persistence/hive_data_store.dart';
import 'core/router.dart';

final dioProvider = Provider.family<Dio, String>((ref, url) {
  return Dio(BaseOptions(
    baseUrl: url,
  ));
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  timeago.setLocaleMessages('es', timeago.EsMessages());
  timeago.setLocaleMessages('es_short', timeago.EsShortMessages());

  final dataStore = HiveDataStore();
  await dataStore.init();
  dataStore.setReviewed(isReviewed: false);

  final mobileAdsService = MobileAdsManager();
  await mobileAdsService.init();
  await mobileAdsService.createInterstitialAd();

  // OneSignal.shared.setAppId(
  //   Platform.isAndroid ? "3f31e0b0-b3a8-48ea-9335-d90b95c9e115" : "",
  // );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    ProviderScope(
      overrides: [
        dataStoreProvider.overrideWithValue(dataStore),
        mobileAdsProvider.overrideWithValue(mobileAdsService),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Trabalhador Brasileiro',
      debugShowCheckedModeBanner: false,

      theme: FlexThemeData.light(
          scheme: FlexScheme.brandBlue, fontFamily: 'Sofia'),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mallardGreen),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
    );
  }
}
