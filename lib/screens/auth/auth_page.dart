import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gymcompanion/components/default_appbar.dart';
import 'package:gymcompanion/components/default_button.dart';
import 'package:gymcompanion/constants/constants.dart';
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
        child: Column(
          children: [
            DefaultAppBar(title: state.isLoginPage ? 'LOGIN' : 'REGISTER'),
            if (state.isLoading)
              Expanded(
                  child:
                      Center(child: CircularProgressIndicator(color: ConstColors.secondaryColor)))
            else
              Expanded(child: state.isLoginPage ? LoginComponent() : RegisterComponent()),
          ],
        ),
      ),
    );
  }
}

class LoginComponent extends ConsumerWidget {
  const LoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);
    final stateNotifier = ref.watch(authControllerProvider.notifier);
    return Align(
      child: SingleChildScrollView(
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
                    initialValue: state.email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'EMAIL'),
                    onChanged: (value) => stateNotifier.changeEmail(value!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  FormBuilderTextField(
                    name: 'password',
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'PASSWORD'),
                    onChanged: (value) => stateNotifier.changePassword(value!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  DefaultButton(
                    onClick: () => stateNotifier.signInWithEmailAndPassword(context),
                    text: 'LOGIN',
                  ),
                  // TextButton(
                  //   onPressed: () => stateNotifier.signInAnonymously(),
                  //   child: Text('LOGIN ANONYMOUS', style: ConstTextStyles.subtle16),
                  // ),
                  TextButton(
                    onPressed: () => stateNotifier.switchToRegisterPage(),
                    child: Text('REGISTER', style: ConstTextStyles.subtle16),
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

class RegisterComponent extends ConsumerWidget {
  const RegisterComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider.notifier);
    return Align(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormBuilder(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FormBuilderTextField(
                    name: 'username',
                    style: ConstTextStyles.textField,
                    keyboardType: TextInputType.emailAddress,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'USERNAME'),
                    onChanged: (value) => state.changeUserName(value!),
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(
                          context,
                          errorText: 'Bitte geben Sie einen Benutzernamen ein',
                        ),
                        FormBuilderValidators.minLength(
                          context,
                          3,
                          errorText: 'Der Benutzername ist zu kurz',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  FormBuilderTextField(
                    name: 'email',
                    style: ConstTextStyles.textField,
                    keyboardType: TextInputType.emailAddress,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'EMAIL'),
                    onChanged: (value) => state.changeEmail(value!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  FormBuilderTextField(
                    name: 'password',
                    obscureText: true,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'PASSWORD'),
                    onChanged: (value) => state.changePassword(value!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  FormBuilderTextField(
                    name: 'repeatpassword',
                    obscureText: true,
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'REPEAT PASSWORD'),
                    onChanged: (value) => state.changePassword(value!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  Row(
                    children: [
                      Expanded(
                        child: FormBuilderTextField(
                          name: 'weight',
                          keyboardType: TextInputType.number,
                          decoration:
                              ConstTextStyles.defaultInput.copyWith(labelText: 'Gewicht in KG'),
                          onChanged: (value) => state.changeWeight(value!),
                        ),
                      ),
                      SizedBox(width: ConstValues.defaultSidePadding),
                      Expanded(
                        child: FormBuilderTextField(
                          name: 'height',
                          keyboardType: TextInputType.number,
                          decoration:
                              ConstTextStyles.defaultInput.copyWith(labelText: 'Größe in CM'),
                          onChanged: (value) => state.changeHeight(value!),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  FormBuilderDateTimePicker(
                    name: 'birthdate',
                    decoration: ConstTextStyles.defaultInput.copyWith(labelText: 'Geburtstag'),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    onChanged: (DateTime? date) => state.changeBirthdate(date!),
                  ),
                  SizedBox(height: ConstValues.defaultSidePadding),
                  DefaultButton(
                    onClick: () => state.createUserWithEmailAndPassword(context),
                    text: 'REGISTER',
                  ),
                  TextButton(
                    onPressed: () => state.switchToLoginPage(),
                    child: Text('BACK TO LOGIN', style: ConstTextStyles.subtle16),
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
