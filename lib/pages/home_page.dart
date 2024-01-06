import 'package:flutter/material.dart';
import 'package:app_esqueleto_responsivo/responsive/responsive_layout.dart';
import 'package:app_esqueleto_responsivo/responsive/desktop_body.dart';
import 'package:app_esqueleto_responsivo/responsive/mobile_body.dart';
import 'package:app_esqueleto_responsivo/responsive/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ResponsiveLayout(
        desktopBody: DesktopBody(),
        mobileBody: MobileBody(),
        tabletBody: TabletBody(),
      ),
    );
  }
}
