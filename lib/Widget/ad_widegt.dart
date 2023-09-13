// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget adsenseAdsView(BuildContext context) {
  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
      'adViewType',
          (int viewID) => IFrameElement()
        ..width = '100%'
        ..height = '100%'
        ..src = 'web/adview.html'
        ..style.border = 'none'
  );

  return const Flexible(
    child: HtmlElementView(
      viewType: 'adViewType',
    ),
  );
}