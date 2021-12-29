import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/constants.dart';
import 'package:gymcompanion/screens/workout/workout/workout_controller.dart';

class WorkoutPage extends ConsumerStatefulWidget {
  WorkoutPage({@PathParam('planId') this.planId});

  final String? planId;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends ConsumerState<WorkoutPage> {
  @override
  void initState() {
    if (widget.planId != null) {
      ref.read(workoutPageProvider.notifier).getExercises(widget.planId!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final plan = ref.watch(workoutPageProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
      child: SafeArea(
        child: Column(
          children: [
            DefaultAppBar(title: 'WORKOUT'),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('haha'),
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
