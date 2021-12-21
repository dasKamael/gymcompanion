import 'package:flutter/material.dart';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';

class Planpage extends ConsumerWidget {
  const Planpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(planProvider);
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
                for (Plan p in state.plans)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ConstColors.textFieldColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(ConstValues.defaultTextFieldBorderRadius),
                        ),
                      ),
                      child: ExpansionTile(
                        iconColor: ConstColors.secondaryColor,
                        textColor: ConstColors.secondaryColor,
                        collapsedIconColor: ConstColors.secondaryColor,
                        childrenPadding: EdgeInsets.all(16.0),
                        title: Text(p.name),
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('ÜBUNG', style: ConstTextStyles.subtle12),
                                  for (Exercise e in p.exercises)
                                    Text(e.name, style: ConstTextStyles.subtle20),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('REPS', style: ConstTextStyles.subtle12),
                                  for (Exercise e in p.exercises)
                                    Text(e.id.toString(), style: ConstTextStyles.subtle20)
                                ],
                              ),
                              SizedBox(width: ConstValues.defaultSidePadding),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('GEWICHT', style: ConstTextStyles.subtle12),
                                  for (Exercise p in p.exercises)
                                    Text('130 KG', style: ConstTextStyles.subtle20)
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'DETAILS',
                                style: ConstTextStyles.header1.copyWith(fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
