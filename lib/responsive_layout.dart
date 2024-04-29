import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget MobileScreenLayout;
  final Widget webScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.MobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return webScreenLayout;
      }
      return MobileScreenLayout;
    });
  }
}
