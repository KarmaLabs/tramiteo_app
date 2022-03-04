import 'dart:io';

import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share_plus/share_plus.dart';
import '../persistence/hive_data_store.dart';
import '../utils/launch_url_helper.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ReviewWidget extends ConsumerWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const SizedBox(height: 32),
        const Divider(
          height: 1,
          thickness: 1,
          color: Colors.black45,
        ),
        const SizedBox(height: 32),
        const Text(
          '¿Te ha resultado útil la información facilitada por esta app?',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                alerta(context: context, isOk: true, ref: ref);
              },
              icon:
                  Icon(Icons.thumb_up, size: 32, color: Colors.green.shade400),
            ),
            const SizedBox(width: 32),
            IconButton(
              onPressed: () {
                alerta(context: context, isOk: false, ref: ref);
              },
              icon: Icon(
                Icons.thumb_down,
                size: 32,
                color: Colors.red.shade400,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ReviewButton(
          onTap: () async {
            PackageInfo packageInfo = await PackageInfo.fromPlatform();
            String packageName = packageInfo.packageName;
            String url = Platform.isAndroid
                ? 'https://play.google.com/store/apps/details?id='
                : 'https://apps.apple.com/app/';
            url += packageName;

            Share.share(
              '¡Echa un vistazo a esta app con información muy completa sobre trámites online en México!: $url',
              subject: 'Tramiteo MX',
            );
          },
          label: 'COMPARTIR',
          icon: Icons.share,
        ),
        const SizedBox(
          height: 12,
        ),
        ReviewButton(
            onTap: () {
              LaunchUrlHelper.launchURL(
                  url: 'https://forms.gle/ekcJLXSTJFPyC8W96');
            },
            label: 'AYÚDANOS A MEJORAR',
            icon: Icons.comment),
      ],
    );
  }
}

alerta(
    {required BuildContext context,
    required bool isOk,
    required WidgetRef ref}) {
  isOk
      ? CoolAlert.show(
          context: context,
          type: CoolAlertType.success,
          backgroundColor: Colors.green.withOpacity(0.1),
          confirmBtnColor: Colors.green,
          text: '''Nos gustaría saber si nuestra app le resulta útil.
¿Puede dejarnos su valoración?
                                ''',
          showCancelBtn: true,
          confirmBtnText: "Si!",
          title: '¡Su opinión es importante!',
          cancelBtnText: "Ahora no",
          onConfirmBtnTap: () {
            ref.read(dataStoreProvider).setReviewed(isReviewed: true);
            Navigator.of(context).pop();
            LaunchReview.launch();
          },
          onCancelBtnTap: () {
            Navigator.pop(context);
          },
        )
      : CoolAlert.show(
          context: context,
          type: CoolAlertType.info,
          title: '¡Ayudenos a mejorar!',
          backgroundColor: Colors.yellow.withOpacity(0.1),
          confirmBtnColor: Colors.green,
          text:
              'Díganos en qué podríamos mejorar la app o qué dificultades está encontrando y trataremos de ayudarle.',
          confirmBtnText: "Ok",
          cancelBtnText: "Ahora no",
          showCancelBtn: true,
          onConfirmBtnTap: () {
            ref.read(dataStoreProvider).setReviewed(isReviewed: true);
            Navigator.of(context).pop();
            LaunchUrlHelper.launchURL(
                url: 'https://forms.gle/ekcJLXSTJFPyC8W96');
          },
          onCancelBtnTap: () {
            Navigator.pop(context);
          },
        );
}

class ReviewButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  const ReviewButton(
      {Key? key, required this.label, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
            color: Colors.green.shade200,
            width: 1,
          ),
          color: Colors.green[50],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Colors.green.shade400,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              icon,
              color: Colors.green.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
