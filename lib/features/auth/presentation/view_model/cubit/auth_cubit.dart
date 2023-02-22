import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as get_navigation;

import '../../../../../core/utils/constant.dart';
import '../../../../home/presentation/view/home_screen.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> userAuth() async {
    try {
      emit(AuthLoading());
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      debugPrint("Signed in with temporary account.");

      navToHomeScreen();
    } on FirebaseAuthException catch (e) {
      navToHomeScreen();
      switch (e.code) {
        case "operation-not-allowed":
          debugPrint("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          debugPrint("Unknown error.");
      }
    }
  }

  void navToHomeScreen() {
    get_navigation.Get.off(const HomeScreen(),
        transition: get_navigation.Transition.zoom,
        duration: transitionDuration);
  }
}
