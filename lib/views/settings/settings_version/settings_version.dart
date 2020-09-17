import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:mateapp/styles/styles.dart';
import 'package:mateapp/shared/widgets.dart';

class SettingsVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MateColors.white,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: StaticNavigationBar(title: 'Versionen'),
            pinned: true,
            floating: true,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: PlatformText(
                      "Version 1.0 release",
                      style: MateTextstyles.h2.apply(color: MateColors.grey),
                      // textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: PlatformText(
                      'September 15, 2020',
                      style: MateTextstyles.small.apply(color: MateColors.grey),
                      // textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
                    child: PlatformText(
                      "Die erste Version von mate. Sie wird durch die Decke gehen und alle Student:innen lieben uns dafür lieben.",
                      style: MateTextstyles.font.apply(color: MateColors.grey),
                      // textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
