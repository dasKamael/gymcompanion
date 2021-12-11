import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/screens/plan/create_plan/create_plan_controller.dart';

// ignore: must_be_immutable
class CreatePlanPage extends ConsumerWidget {
  CreatePlanPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPlanProvider);
    return Container(
      color: ConstColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultAppBar(title: 'PLAN ERSTELLEN'),
              SizedBox(height: 16.0),
              FormBuilder(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      name: 'name',
                      style: ConstTextStyles.textField,
                      decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'NAME'),
                    ),
                    SizedBox(height: 32.0),
                    FormBuilderDropdown(
                      name: 'exercise',
                      style: ConstTextStyles.textField,
                      decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'EXERCISE'),
                      onChanged: (Map<String, Object>? value) {
                        ref.read(createPlanProvider.notifier).addExerciseToList(value!);
                      },
                      items: state.exercises
                          .map(
                            (exercise) => DropdownMenuItem(
                              key: ValueKey<int>(exercise.id),
                              value: {'id': exercise.id, 'name': exercise.name},
                              child: Text(exercise.name),
                            ),
                          )
                          .toList(),
                    ),
                    ReorderableListView(
                      shrinkWrap: true,
                      children: [
                        for (int i = 0; i < state.selectedExercises.length; i++)
                          Dismissible(
                            key: ValueKey<int>(state.selectedExercises[i].id),
                            direction: DismissDirection.endToStart,
                            onDismissed: (direction) =>
                                ref.read(createPlanProvider.notifier).removeExerciseFromList(i),
                            background: Container(
                              color: ConstColors.warn,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'DELETE',
                                    style: ConstTextStyles.textField.copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            child: Container(
                              color: ConstColors.primaryColor,
                              child: ListTile(
                                title: Text(state.selectedExercises[i].name,
                                    style: ConstTextStyles.textField),
                                trailing:
                                    Icon(Icons.drag_handle, color: ConstColors.textFieldColor),
                              ),
                            ),
                          ),
                      ],
                      onReorder: (oldIndex, newIndex) => ref
                          .read(createPlanProvider.notifier)
                          .reorderExerciseList(oldIndex, newIndex),
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
