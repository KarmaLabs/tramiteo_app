import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tramiteo/features/tramites/tramite/tramites_service.dart';

import '../../../core/constants.dart';
import 'seccion_model.dart';
import '../tramite/tramite_model.dart';
import '../tramite/tramites_view.dart';

class SeccionView extends ConsumerWidget {
  final Seccion seccion;
  const SeccionView({required this.seccion, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TramiteModel> tramites = ref
        .read(tramitesServiceProvider)
        .getTramitesbyServicio(seccion
            .id); //_tramitesService.getTramitesbyServicio(widget.seccion.id);
    return Scaffold(
      appBar: AppBar(
        title: Text(seccion.name),
        backgroundColor: seccion.color,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
            vertical: Constants.paddingVertical,
            horizontal: Constants.paddingHorizontal),
        child: Column(
          children: [
            TramitesView(
              tramites: tramites,
              color: seccion.color,
            ),
          ],
        ),
      ),
    );
  }
}
