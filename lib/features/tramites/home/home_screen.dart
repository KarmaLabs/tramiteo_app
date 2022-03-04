import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tramiteo/features/rss/widgets/rss_horizontal_list.dart';
import 'package:tramiteo/features/tramites/home/seccion_tile_widget.dart';

import '../../../core/ads/mobile_ads_manager.dart';
import '../seccion/seccion_model.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  late AppLifecycleReactor _appLifecycleReactor;

  get tarifasDomesticasClasificacion => null;
  @override
  void initState() {
    super.initState();
    MobileAdsManager mobileAdsManager = ref.read(mobileAdsProvider)
      ..loadAppOpenAd();
    _appLifecycleReactor =
        AppLifecycleReactor(appOpenAdManager: mobileAdsManager);
    _appLifecycleReactor.listenToAppStateChanges();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tramiteo MX'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const RssHorizontalView(),
            const SizedBox(
              height: 20,
            ),

            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: AutoSizeText(
                  'Accede a la información de los distintos trámites online de una manera rápida, fácil y eficiente.',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    color: Theme.of(context).colorScheme.primary,
                    // color: AppTheme.of(context)
                    //     .secondary, //Theme.of(context).primaryColor, //Colors.cyan[800],
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

//             HtmlHelper.getHtml('''
// <ul class="hero__checklist">
// <li class="hero__checklist-item">Entiende tu factura de luz</li>
// <li class="hero__checklist-item">Analizamos su consumo</li>
// <li class="hero__checklist-item">Asesoramiento gratuito</li>
// </ul>'''),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: const ScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SeccionTileWidget(Seccion.listSecciones[index]);
                //return const Text('data');
              },
              itemCount: Seccion.listSecciones.length,
            ),

            // const ServiciosWidget(),
            // const HeaderWidget(title: 'Videos'),
            // const SizedBox(
            //   height: 10,
            // ),
            // const YoutubeHorizontalView(),
          ],
        ),
      ),
    );
  }
}
