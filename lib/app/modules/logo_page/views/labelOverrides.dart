import 'package:flutterfire_ui/i10n.dart';

class LabelOverrides extends DefaultLocalizations{
  const LabelOverrides();

  @override
  String get signInActionText => '로그인';

  @override
  String get registerActionText => '회원가입';

  @override
  String get signInText => '로그인';

  @override
  String get registerHintText => '계정이 없으신가요?';

  @override
  String get registerText => '회원가입';

  @override
  String get forgotPasswordButtonLabel => '비밀번호 찾기';

  @override
  String get signInHintText => '이미 계정이 있으신가요?';

  @override
  String get wrongOrNoPasswordErrorText => '비밀번호가 일치하지 않습니다. 비밀번호 찾기를 통해 재설정 하실 수 있습니다.';

  @override
  String get userNotFoundErrorText => '등록된 사용자가 아닙니다. 가입시 입력한 이메일을 입력해주세요.';

  @override
  String get forgotPasswordHintText => '가입 시 입력한 이메일을 입력해주세요. 비밀번호 재설정 링크를 보내드리겠습니다.';

  @override
  String get forgotPasswordViewTitle => '비밀번호 찾기';

  @override
  String get resetPasswordButtonLabel => '비밀번호 재설정하기';

  @override
  String get goBackButtonLabel => '뒤로가기';

  @override
  String get isNotAValidEmailErrorText => '이메일 형식으로 입력해주세요. '; //둘다인듯?

  @override
  String get passwordResetEmailSentText => '이메일을 확인해주세요. 비밀번호 재설정을 위한 링크가 전송되었습니다.';

  @override
  String get confirmPasswordDoesNotMatchErrorText => '재입력한 비밀번호가 일치하지 않습니다.';

  @override
  String get emailIsRequiredErrorText => '이메일 형식으로 입력해주세요.';

  @override
  String get passwordIsRequiredErrorText => '비밀번호를 입력해주세요.';

  @override
  String get confirmPasswordIsRequiredErrorText  => '비밀번호는 6글자 이상을 입력해주세요.';

}