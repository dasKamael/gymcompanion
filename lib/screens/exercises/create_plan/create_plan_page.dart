import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/screens/exercises/create_plan/create_plan_controller.dart';

// ignore: must_be_immutable
class CreatePlanPage extends ConsumerWidget {
  CreatePlanPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPlanProvider);
    final stateNotifier = ref.watch(createPlanProvider.notifier);
    return Container(
      color: ConstColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
        child: Stack(
          children: [
            Column(
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
                        onChanged: (name) => stateNotifier.setPlanName(name!),
                      ),
                      SizedBox(height: 32.0),
                      DropdownSearch<Exercise>.multiSelection(
                        mode: Mode.BOTTOM_SHEET,
                        showSearchBox: true,
                        selectedItems: state.selectedExercises,
                        popupItemBuilder: (context, item, isSelected) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.name, style: ConstTextStyles.textField),
                        ),
                        emptyBuilder: (context, searchEntry) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            padding:
                                EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
                            child: Column(
                              children: [
                                Text('Übung ${searchEntry} nicht gefunden!'),
                                DropdownButton<String>(
                                  hint: Text('Select BodyType'),
                                  items: [
                                    for (var e in BodyType.values)
                                      DropdownMenuItem(
                                        key: Key(e.name),
                                        value: e.name,
                                        child: Text(e.name),
                                      )
                                  ],
                                  onChanged: (value) =>
                                      stateNotifier.setNewExerciseBodyType(value as BodyType),
                                ),
                                DefaultButton(
                                  text: 'Übung erstellen und hinzufügen',
                                  onClick: () => stateNotifier.addNewExercise(name: searchEntry!),
                                )
                              ],
                            ),
                          );
                        },
                        items: state.exercises.map((exercise) => exercise).toSet().toList(),
                        dropdownBuilder: (context, selectedItems) =>
                            Text('SELECT EXERCISE', style: ConstTextStyles.textField),
                        popupBackgroundColor: ConstColors.primaryColor,
                        dropdownSearchBaseStyle: ConstTextStyles.textField,
                        dropdownSearchDecoration: ConstTextStyles.defaultInput,
                        popupOnItemAdded: (selectedItems, item) =>
                            stateNotifier.addExerciseToList(item),
                        popupOnItemRemoved: (selectedItems, item) =>
                            stateNotifier.removeExerciseFromList(item),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ReorderableListView(
                    children: [
                      for (int i = 0; i < state.selectedExercises.length; i++)
                        Dismissible(
                          key: ValueKey<String>(state.selectedExercises[i].id),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) => ref
                              .read(createPlanProvider.notifier)
                              .removeExerciseFromList(state.selectedExercises[i]),
                          background: Container(
                            color: ConstColors.error,
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
                              trailing: Icon(Icons.drag_handle, color: ConstColors.textFieldColor),
                            ),
                          ),
                        ),
                    ],
                    onReorder: (oldIndex, newIndex) => ref
                        .read(createPlanProvider.notifier)
                        .reorderExerciseList(oldIndex, newIndex),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: DefaultButton(
                    text: 'CREATE',
                    onClick: () => stateNotifier.createPlan(context),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
