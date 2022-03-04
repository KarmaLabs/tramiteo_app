import 'package:go_router/go_router.dart';
import 'package:tramiteo/core/widgets/html/html_model.dart';
import 'package:tramiteo/core/widgets/html/html_screen.dart';
import 'package:tramiteo/core/widgets/webview/webview_model.dart';
import 'package:tramiteo/core/widgets/webview/webview_widget.dart';
import 'package:tramiteo/features/tramites/tramite/tramite_model.dart';

import '../features/rss/screens/posts/rss_posts.dart';
import '../features/tramites/home/home_screen.dart';
import '../features/tramites/seccion/seccion_model.dart';
import '../features/tramites/seccion/seccion_view.dart';
import '../features/tramites/tramite/tramite_view.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/rssposts',
      builder: (context, state) => const RssPosts(),
    ),

    GoRoute(
      path: '/seccion_detail',
      builder: (context, state) =>
          SeccionView(seccion: state.extra! as Seccion),
    ),
    GoRoute(
      path: '/tramite',
      builder: (context, state) =>
          TramiteView(tramite: state.extra! as TramiteModel),
    ),
    // GoRoute(
    //   path: '/pagorecibo',
    //   builder: (context, state) => const PagoReciboView(),
    // ),
    // GoRoute(
    //   path: '/recibo_detail',
    //   builder: (context, state) => ReciboDetailView(
    //       reciboModel: state.extra! as TramiteReciboModel,
    //       nameSeccion: state.queryParams['seccion_name']!),
    // ),
    GoRoute(
      path: '/html',
      builder: (context, state) => HtmlScreen(
        htmlModel: state.extra! as HtmlModel,
      ),
    ),
    // GoRoute(
    //   path: '/youtube',
    //   builder: (context, state) => YoutubePlayer(
    //     youtubeModel: state.extra! as YoutubeModel,
    //   ),
    // ),
    GoRoute(
      path: '/webview',
      builder: (context, state) => FlutterWebview(
        webviewModel: state.extra! as WebviewModel,
      ),
    ),
  ],
);
