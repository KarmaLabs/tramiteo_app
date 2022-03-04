import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tramiteo/features/tramites/tramite/tramite_model.dart';

import '../../../core/utils/router_helper.dart';

class TramitesView extends ConsumerWidget {
  const TramitesView({Key? key, required this.tramites, this.color})
      : super(key: key);
  // final Servicio servicio;
  final List<TramiteModel> tramites;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: tramites.length,
        itemBuilder: (_, index) {
          final TramiteModel tramite = tramites[index];
          return ServicioTileWidgetView(
            function: () {
              // model.navigateTo(
              //     route: Routes.tramiteView,
              //     arguments: TramiteViewArguments(tramite: tramite));
              RouterManager.push(
                  context: context, ref: ref, route: '/tramite', extra: tramite
                  //seccion.route,
                  );
            },
            tramite: tramite,
            color: color,
          );
        });
  }
}

class ServicioTileWidgetView extends StatelessWidget {
  final Color? color;
  final TramiteModel tramite;
  final VoidCallback function;
  const ServicioTileWidgetView(
      {required this.tramite, required this.function, this.color});

  @override
  Widget build(BuildContext context) {
    // final _tramitesService = locator<TramitesService>();
    // Servicio servicio = _tramitesService.getServicio(tramite.idServicio);
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: color ?? Colors.green, width: 2),
        ),
        child: ListTile(
          title: AutoSizeText(
            tramite.title,
            maxLines: 2,
            style: TextStyle(
              color: color ?? Colors.green,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          //subtitle: Text(servicio.name),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: color ?? Colors.green,
          ),
        ),
      ),
    );
  }
}
