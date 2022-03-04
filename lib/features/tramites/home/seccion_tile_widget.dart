import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:nb_utils/nb_utils.dart';
import 'package:tramiteo/features/tramites/seccion/seccion_model.dart';

import '../../../core/utils/router_helper.dart';

class SeccionTileWidget extends ConsumerWidget {
  final Seccion seccion;
  const SeccionTileWidget(this.seccion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          //LaunchUrlHelper.launchURL(url: listServicios[index].url);
          RouterManager.push(
              context: context,
              ref: ref,
              route: '/seccion_detail',
              extra: seccion
              //seccion.route,
              );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 70,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.perm_device_info_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: seccion.color, //Colors.green.shade600,
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                // boxDecoration(
                //     bgColor: colors[index % colors.length], radius: 4),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: <Widget>[
                    Container(
                        width: width,
                        height: 70,
                        padding: const EdgeInsets.only(left: 12, right: 24),
                        margin: EdgeInsets.only(right: width / 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                AutoSizeText(
                                  seccion.name,
                                  style: boldTextStyle(size: 18),
                                  maxLines: 1,
                                ),
                                AutoSizeText(
                                  seccion.subtitle,
                                  maxLines: 4,
                                  style: const TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ).expand(),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: defaultBoxShadow(
                              shadowColor: shadowColorGlobal,
                              blurRadius: 6,
                              spreadRadius: 6),
                          border: Border.all(color: Colors.transparent),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4)),
                        )),
                    Container(
                      width: 30,
                      height: 30,
                      child: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.white),
                      decoration: BoxDecoration(
                          color: seccion.color, shape: BoxShape.circle),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
