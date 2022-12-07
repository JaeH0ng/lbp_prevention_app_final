import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/authentication_controller.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: StreamBuilder(
          stream: controller.auth,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SignInScreen(
                subtitleBuilder: (context, action) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      action == AuthAction.signIn //버튼 클릭시 ? -> : 정의된 텍스트로 action
                          ? '만나서 반갑습니다 :)'
                          : '비밀번호는 6글자 이상으로 설정해주세요.',
                    ),
                  );
                },
                providerConfigs: [
                  EmailProviderConfiguration(),
                ],
              );
            }
            return Container();
          },
        )),
      ),
    );
  }
}
