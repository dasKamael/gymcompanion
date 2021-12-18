import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/providers/plan/plan_provider.dart';
import 'package:gymcompanion/screens/training/components/training_card.dart';

class TrainingPage extends ConsumerWidget {
  const TrainingPage({Key? key}) : super(key: key);
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
              child: AppinioSwiper(
                cards: [
                  TrainingCard(),
                  TrainingCard(),
                  TrainingCard(),
                  TrainingCard(),
                  TrainingCard(),
                ],
              ),
            ),
            DefaultButton(text: 'DONE', onClick: () {}),
            SizedBox(height: ConstValues.defaultSidePadding),
          ],
        ),
      ),
    );
  }
}
