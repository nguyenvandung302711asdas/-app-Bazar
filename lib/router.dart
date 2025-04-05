import 'package:btvn/pages/home.dart';
import 'package:fluro/fluro.dart';
import 'package:btvn/pages/onboarding/onboarding1.dart';
import 'package:btvn/pages/onboarding/onboarding2.dart';
import 'package:btvn/pages/onboarding/onboarding3.dart';
import 'package:btvn/pages/signin_and_signup/sign_in.dart';
import 'package:btvn/pages/signin_and_signup/signup.dart';
import 'package:btvn/pages/signin_and_signup/verification/congratulation.dart';
import 'package:btvn/pages/signin_and_signup/verification/phone_number.dart';
import 'package:btvn/pages/signin_and_signup/verification/verification_email.dart';
import 'package:btvn/pages/signin_and_signup/verification/verification_phone.dart';
import 'package:btvn/pages/forgot_password/forgot_password.dart';
import 'package:btvn/pages/forgot_password/reset_password_email.dart';
import 'package:btvn/pages/forgot_password/reset_password_phone.dart';
import 'package:btvn/pages/forgot_password/new_password.dart';
import 'package:btvn/pages/forgot_password/password_change.dart';
import 'package:btvn/pages/forgot_password/verification_code_email.dart';
import 'package:btvn/pages/forgot_password/verification_code_phone.dart';

class FluroRouterConfig {
  static final FluroRouter router = FluroRouter();

  static final Handler _homeHandler = Handler(
    handlerFunc: (context, params) => HomePage(),
  );

  static final Handler _onboarding1Handler = Handler(
    handlerFunc: (context, params) => Onboarding1Page(),
  );

  static final Handler _onboarding2Handler = Handler(
    handlerFunc: (context, params) => Onboarding2Page(),
  );

  static final Handler _onboarding3Handler = Handler(
    handlerFunc: (context, params) => Onboarding3Page(),
  );

  static final Handler _signInHandler = Handler(
    handlerFunc: (context, params) => SignInPage(),
  );

  static final Handler _signUpHandler = Handler(
    handlerFunc: (context, params) => SignUpPage(),
  );

  static final Handler _phoneNumberHandler = Handler(
    handlerFunc: (context, params) => PhoneNumber(),
  );

  static final Handler _verificationEmailHandler = Handler(
    handlerFunc: (context, params) => VerificationEmail(),
  );

  static final Handler _verificationPhoneHandler = Handler(
    handlerFunc: (context, params) => VerificationPhone(),
  );

  static final Handler _congratulationHandler = Handler(
    handlerFunc: (context, params) => Congratulation(),
  );

  static final Handler _forgotPasswordHandler = Handler(
    handlerFunc: (context, params) => ForgotPassword(),
  );

  static final Handler _resetPasswordEmailHandler = Handler(
    handlerFunc: (context, params) => ResetPasswordEmail(),
  );

  static final Handler _resetPasswordPhoneHandler = Handler(
    handlerFunc: (context, params) => ResetPasswordPhone(),
  );

  static final Handler _verificationCodeEmailHandler = Handler(
    handlerFunc: (context, params) => VerificationCodeEmail(),
  );

  static final Handler _verificationCodePhoneHandler = Handler(
    handlerFunc: (context, params) => VerificationCodePhone(),
  );

  static final Handler _newPasswordHandler = Handler(
    handlerFunc: (context, params) => NewPassword(),
  );

  static final Handler _passwordChangeHandler = Handler(
    handlerFunc: (context, params) => PasswordChange(),
  );


  static void setupRouter() {
    router.define("/home", handler: _homeHandler);
    router.define("/", handler: _onboarding1Handler);
    router.define("/onboarding2", handler: _onboarding2Handler);
    router.define("/onboarding3", handler: _onboarding3Handler);
    router.define("/signin", handler: _signInHandler);
    router.define("/signup", handler: _signUpHandler);
    router.define("/verificationEmail", handler: _verificationEmailHandler);
    router.define("/phoneNumber", handler: _phoneNumberHandler);
    router.define("/verificationPhone", handler: _verificationPhoneHandler);
    router.define("/congratulation", handler: _congratulationHandler);
    router.define("/forgotPassword", handler: _forgotPasswordHandler);
    router.define("/resetPasswordEmail", handler: _resetPasswordEmailHandler);
    router.define("/resetPasswordPhone", handler: _resetPasswordPhoneHandler);
    router.define("/verificationCodeEmail", handler: _verificationCodeEmailHandler);
    router.define("/verificationCodePhone", handler: _verificationCodePhoneHandler);
    router.define("/newPassword", handler: _newPasswordHandler);
    router.define("/passwordChange", handler: _passwordChangeHandler);
  }
}