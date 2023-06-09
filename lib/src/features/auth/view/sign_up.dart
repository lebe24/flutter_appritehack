import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/common/button_widget.dart';
import 'package:flutter_appritehack/src/common/rounded_small_button.dart';
import 'package:flutter_appritehack/src/common/text_field.dart';
import 'package:flutter_appritehack/src/features/auth/controller/auth_provider.dart';
import 'package:flutter_appritehack/src/features/auth/widget/auth_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpView extends ConsumerStatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpView());
  const SignUpView({super.key});

  @override
  ConsumerState<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends ConsumerState<SignUpView> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void onSignUp() {
    ref.read(authControllerProvider.notifier).signUp(
          username: usernameController.text,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 45),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Hello! Register to get started',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white)),
               ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextCustom_field(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextCustom_field(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextCustom_field(
                  controller: passwordController,
                  hintText: 'password',
                  obscureText: false,
                ),
              ),
              const SizedBox(height: 10),
               CustomBtn(
                function: onSignUp,
                color: Colors.black,
                borderSideColor: Colors.black,
                child: const Text('Done')..style,
              ),
            ],
          ),
        ),
      ),
    );
  }
}