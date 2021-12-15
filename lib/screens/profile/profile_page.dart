import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/providers/user/user_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(userProvider);
    return Container(
      color: ConstColors.primaryColor,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => ref.read(userProvider.notifier).getUser(),
            child: DefaultAppBar(title: state.userName),
          ),
        ],
      ),
    );
  }
}
