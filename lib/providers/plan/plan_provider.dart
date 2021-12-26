import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/models/exercise.dart';
import 'package:gymcompanion/models/plan.dart';
import 'package:gymcompanion/providers/plan/plan_state.dart';
import 'package:gymcompanion/providers/providers.dart';

final planProvider = StateNotifierProvider<PlanStateProvider, PlanState>(
  (ref) => PlanStateProvider(
    ref.read,
    () => ref.read(dioProvider.future),
  ),
);

class PlanStateProvider extends StateNotifier<PlanState> {
  PlanStateProvider(
    this._read,
    this.dioProvider,
  ) : super(PlanState(plans: [
          Plan(
            id: 1,
            name: 'Brust Trizeps',
            exercises: [
              Exercise(id: 1, name: 'Trizeps Pulldown'),
              Exercise(id: 2, name: 'Chest Press'),
              Exercise(id: 3, name: 'Dips'),
              Exercise(id: 3, name: 'Negativ ChestPress'),
            ],
            lastTrained: [],
          ),
          Plan(
            id: 2,
            name: 'Rücken Trizeps',
            exercises: [
              Exercise(id: 1, name: 'Trizeps Pulldown'),
              Exercise(id: 2, name: 'Chest Press'),
              Exercise(id: 3, name: 'Dips'),
              Exercise(id: 3, name: 'Negativ ChestPress'),
            ],
            lastTrained: [],
          ),
        ]));

  final Reader _read;
  final Future<Dio> Function() dioProvider;

  Future<void> getUserPlans() async {
    final dio = await dioProvider();
  }

  void addPlan(Plan plan) {
    state.plans.add(plan);
    state = state.copyWith();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
