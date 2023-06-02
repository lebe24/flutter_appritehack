import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/common/rounded_small_button.dart';
import 'package:flutter_appritehack/src/features/auth/controller/auth_provider.dart';
import 'package:flutter_appritehack/src/features/auth/widget/auth_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpView extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpView(),
      );
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void onSignUp() {
    ref.read(authControllerProvider.notifier).signUp(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthField(
              controller: emailController,
              hintText: 'Email',
            ),
            const SizedBox(height: 25),
            AuthField(
              controller: passwordController,
              hintText: 'Password',
            ),
            const SizedBox(height: 40),
                      Align(
                        alignment: Alignment.topRight,
                        child: RoundedSmallButton(
                          onTap: onSignUp,
                          label: 'Done',
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}