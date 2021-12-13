import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';
import 'package:gymcompanion/constants/text_styles.dart';
import 'package:gymcompanion/screens/auth/auth_controller.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);
    return Scaffold(
      backgroundColor: ConstColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstValues.defaultSidePadding),
        child: Stack(
          children: [
            DefaultAppBar(title: 'LOGIN'),
            if (state.isLoading)
              Center(child: CircularProgressIndicator(color: ConstColors.secondaryColor))
            else
              Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FormBuilder(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FormBuilderTextField(
                            name: 'email',
                            style: ConstTextStyles.textField,
                            keyboardType: TextInputType.emailAddress,
                            decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'EMAIL'),
                            onChanged: (value) =>
                                ref.read(authControllerProvider.notifier).changeEmail(value!),
                          ),
                          SizedBox(height: ConstValues.defaultSidePadding),
                          FormBuilderTextField(
                            name: 'password',
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                ConstTextStyles.defaultInput.copyWith(labelText: 'PASSWORD'),
                            onChanged: (value) =>
                                ref.read(authControllerProvider.notifier).changePassword(value!),
                          ),
                          SizedBox(height: ConstValues.defaultSidePadding),
                          DefaultButton(
                            onClick: () => ref
                                .read(authControllerProvider.notifier)
                                .signInWithEmailAndPassword(),
                            text: 'LOGIN',
                          ),
                          TextButton(
                            onPressed: () =>
                                ref.read(authControllerProvider.notifier).signInAnonymously(),
                            child: Text('LOGIN ANONYMOUS', style: ConstTextStyles.subtle16),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('REGISTER', style: ConstTextStyles.subtle16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
