import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/screens/workout/workout/workout_controller.dart';

class WorkoutPage extends ConsumerStatefulWidget {
  WorkoutPage({this.plan});

  final Plan? plan;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends ConsumerState<WorkoutPage> {
  @override
  void initState() {
    if (widget.plan != null) {
      ref.read(workoutPageProvider.notifier).getExercises(widget.plan!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(workoutPageProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
      child: SafeArea(
        child: Column(
          children: [
            DefaultAppBar(title: widget.plan == null ? 'WORKOUT' : widget.plan!.name),
            Expanded(
              child: ListView.builder(
                itemCount: state.exercises.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: ConstValues.defaultSidePadding,
                      vertical: ConstValues.defaultSidePadding / 2,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(ConstValues.defaultSidePadding),
                      decoration: BoxDecoration(
                        color: Color(0xFF333849),
                        borderRadius:
                            BorderRadius.circular(ConstValues.defaultTextFieldBorderRadius),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.exercises[index].name,
                            style: ConstTextStyles.textField,
                          ),
                          Icon(Icons.keyboard_arrow_down, color: ConstColors.secondaryColor),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
