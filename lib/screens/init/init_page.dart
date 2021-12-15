import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/screens/init/init_page_controller.dart';

class InitPage extends ConsumerWidget {
  const InitPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(initPageProvider);
    return Scaffold(
      backgroundColor: ConstColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('GYM-COMPANION', style: ConstTextStyles.header1),
            if (state.isLoading) CircularProgressIndicator(color: ConstColors.secondaryColor),
          ],
        ),
      ),
    );
  }
}
