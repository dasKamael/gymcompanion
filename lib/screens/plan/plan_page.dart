import 'package:flutter/material.dart';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';

class Planpage extends ConsumerWidget {
  const Planpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: ConstColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                DefaultAppBar(
                  title: 'TRAININGSPLÄNE',
                  leading: Icon(
                    Icons.filter_alt,
                    size: 28,
                    color: ConstColors.secondaryColor,
                  ),
                  actions: [
                    GestureDetector(
                      onTap: () => context.router.pushNamed('createPlan'),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 28,
                        color: ConstColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
