import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/providers/providers.dart';
import 'package:gymcompanion/routes.gr.dart';

class SelectWorkoutPage extends ConsumerWidget {
  const SelectWorkoutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(planProvider);
    return Padding(
      padding: const EdgeInsets.all(ConstValues.defaultSidePadding),
      child: Container(
        color: ConstColors.primaryColor,
        child: Column(
          children: [
            DefaultAppBar(title: 'TRAINING'),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownSearch(
                    mode: Mode.BOTTOM_SHEET,
                    showSearchBox: true,
                    dropdownBuilder: (context, selectedItems) =>
                        Text('SELECT PLAN', style: ConstTextStyles.textField),
                    items: state.plans.map((plan) => plan.name).toSet().toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'ODER',
                      style: ConstTextStyles.subtle20,
                    ),
                  ),
                  DefaultButton(
                    text: 'INDIVIDUELLES TRAINING',
                    onClick: () => ref.read(routeProvider).push(WorkoutRoute()),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
