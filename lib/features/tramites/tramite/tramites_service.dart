import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tramiteo/features/tramites/seccion/seccion_model.dart';
import 'package:tramiteo/features/tramites/tramite/tramite_model.dart';

final tramitesServiceProvider = Provider<TramitesService>((ref) {
  return TramitesService();
});

class TramitesService {
  List<TramiteModel> getTramitesbyServicio(int idServicio) {
    return TramiteModel.listTramites
        .where((tramite) => tramite.idServicio == idServicio)
        .toList();
  }

  Seccion getServicio(int idServicio) {
    return Seccion.listSecciones
        .firstWhere((element) => element.id == idServicio);
  }

  Color getColorServicio(int idServicio) {
    return Seccion.listSecciones
        .firstWhere((element) => element.id == idServicio)
        .color;
  }
}
