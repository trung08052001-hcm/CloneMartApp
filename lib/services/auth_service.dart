import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';

class AuthService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  Future<void> loginWithGoogle() async {
    try {
      // Check if there's a GoogleSignIn operation in progress
      if (_googleSignIn.currentUser == null) {
        // If not, perform signIn
        final GoogleSignInAccount? googleSignInAccount =
            await _googleSignIn.signIn();

        if (googleSignInAccount != null) {
          print('Google login successful');
          getIt<NavigationService>().navigateTo(RouteConst.main);
        } else {
          print('Google login canceled');
        }
      } else {
        print('GoogleSignIn operation is already in progress.');
      }
    } catch (error) {
      print('Error during Google login: $error');
    }
  }

  Future<void> loginWithFacebook(BuildContext context) async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final AccessToken? accessToken = result.accessToken;

        if (accessToken != null) {
          // Tạo credential từ token Facebook
          final AuthCredential credential =
              FacebookAuthProvider.credential(accessToken.token);

          // Đăng nhập vào Firebase với credential
          await FirebaseAuth.instance.signInWithCredential(credential);

          // In ra thông tin người dùng đã đăng nhập
          print(
              'Firebase Facebook login successful. User: ${FirebaseAuth.instance.currentUser}');
          getIt<NavigationService>().navigateTo(RouteConst.main);
        } else {
          print('Facebook login failed. Access token is null.');
        }
      } else {
        print('Facebook login failed. Status: ${result.status}');
      }
    } catch (e) {
      print('Error during Facebook login: $e');
    }
  }
}
