import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/providers/plan/plan_state.dart';

final planProvider = StateNotifierProvider<PlanStateProvider, PlanState>(
  (ref) => PlanStateProvider(ref.read),
);

class PlanStateProvider extends StateNotifier<PlanState> {
  PlanStateProvider(
    this._read,
  ) : super(
          PlanState(
            plans: [],
          ),
        );

  final Reader _read;

  Future<void> getUserPlans() async {}

  void createAndAddPlan({required String name, required List exercises}) {}
}
