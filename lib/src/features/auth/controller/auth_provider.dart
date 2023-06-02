import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/api/auth_api.dart';
import 'package:flutter_appritehack/src/api/user_api.dart';
import 'package:flutter_appritehack/src/core/utils.dart';
import 'package:flutter_appritehack/src/features/auth/view/login.dart';
import 'package:flutter_appritehack/src/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) {
  return AuthController(
    authAPI: ref.watch(authAPIProvider),
    userAPI: ref.watch(userAPIProvider),
  );
});


class AuthController extends StateNotifier<bool>{

  late final AuthAPI _authAPI;
  late final UserAPI _userAPI;

  AuthController({
    required AuthAPI authAPI,
    required UserAPI userAPI,
  })  : _authAPI = authAPI,
        _userAPI = userAPI,
        super(false);



  void signUp({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = true;
    final res = await _authAPI.signUp(
      email: email,
      password: password,
    );
    state = false;
    res.fold(
      (l) => showSnackBar(context, l.message),
      (r) async {
        UserModel userModel = UserModel(
          email: email,
          name: getNameFromEmail(email),
          followers: const [],
          following: const [],
          profilePic: '',
          bannerPic: '',
          uid: r.$id,
          bio: ''
        );
        final res2 = await _userAPI.saveUserData(userModel);
        res2.fold((l) => showSnackBar(context, l.message), (r) {
          showSnackBar(context, 'Accounted created! Please login.');
          Navigator.push(context, LoginView.route());
        });
      },
    );
  }
}