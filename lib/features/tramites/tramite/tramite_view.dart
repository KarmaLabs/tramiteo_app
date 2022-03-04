import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tramiteo/core/review/review_widget.dart';
import 'package:tramiteo/features/tramites/seccion/seccion_model.dart';
import 'package:tramiteo/features/tramites/tramite/tramite_button.dart';
import 'package:tramiteo/features/tramites/tramite/tramite_model.dart';
import 'package:tramiteo/features/tramites/tramite/tramites_service.dart';

import '../../../core/constants.dart';
import '../../../core/utils/launch_url_helper.dart';

class TramiteView extends ConsumerWidget {
  const TramiteView({Key? key, required this.tramite}) : super(key: key);

  final TramiteModel tramite;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color color =
        ref.read(tramitesServiceProvider).getColorServicio(tramite.idServicio);
    Seccion seccion =
        ref.read(tramitesServiceProvider).getServicio(tramite.idServicio);
    return Scaffold(
      appBar: AppBar(
        title: Text(seccion.name),
        backgroundColor: color,
        actions: [
          IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              GoRouter.of(context).go(
                '/',
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: color,
              width: double.infinity,
              child: Text(
                tramite.title,
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.paddingHorizontal,
                  vertical: Constants.paddingVertical),
              child: Column(
                children: [
                  Html(
                      data: tramite.description,
                      onLinkTap: (String? url, RenderContext context,
                          Map<String, String> attributes, _) {
                        LaunchUrlHelper.launchURL(url: url!);

                        //open URL in webview, or launch URL in browser, or any other logic here
                      }),
                  tramite.content ?? Container(),
                  const ReviewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: tramite.url != null
          ? SafeArea(
              child: TramiteButton(
                  label: tramite.buttonTitle ?? 'Acceder al Trámite',
                  color: color,
                  function: () {
                    LaunchUrlHelper.launchURL(url: tramite.url!);
                    // model.launchUrl(tramite.url!);
                  }),
            )
          : null,
    );
  }
}
