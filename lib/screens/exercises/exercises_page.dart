import 'package:flutter/material.dart';

import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/screens/exercises/exercises_controller.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class Exercisespage extends ConsumerWidget {
  const Exercisespage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(planProvider);
    final stateNotifier = ref.watch(exercisePageProvider.notifier);
    return Container(
      color: ConstColors.primaryColor,
      child: SafeArea(
        child: LiquidPullToRefresh(
          backgroundColor: ConstColors.primaryColor,
          color: ConstColors.secondaryColor,
          animSpeedFactor: 4,
          showChildOpacityTransition: false,
          onRefresh: () => stateNotifier.getPlans(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
            child: ListView(
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
                        title: Text(
                          p.name,
                          style: ConstTextStyles.textField,
                        ),
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
                                    Text(e.name, style: ConstTextStyles.subtle20)
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
