import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';

class TrainingPage extends ConsumerWidget {
  const TrainingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(planProvider);
    return Container(
      color: ConstColors.primaryColor,
      child: Column(
        children: [
          DefaultAppBar(title: 'TRAINING'),
          Expanded(
            child: Center(
              child: Text(
                'TRAINING',
                style: ConstTextStyles.header1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
