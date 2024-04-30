import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//TODO create instance with singleton
class AWSServices {
  final userPool = CognitoUserPool(
    dotenv.env['GATSBY_COGNITO_USER_POOL_ID']!,
    dotenv.env['GATSBY_COGNITO_CLIENT_ID']!,
  );

  Future<void> signUpUser({validEmail, password}) async {
    try {
      var data = await userPool.signUp(
        validEmail,
        password,
      );
      print('User signed up successfully: $data');
    } catch (e) {
      print('Error during user sign up: $e');
    }
  }

  Future<void> confirmCode({validEmail, code}) async {
    final cognitoUser = CognitoUser(validEmail, userPool);

    bool registrationConfirmed = false;
    try {
      registrationConfirmed = await cognitoUser.confirmRegistration(code);
    } catch (e) {
      print(e);
    }
    print(registrationConfirmed);
  }

  Future signInUser(email, password) async {
    final cognitoUser = CognitoUser(email, userPool);
    print(email);
    print(password);

    final authDetails = AuthenticationDetails(
      username: email,
      password: password,
    );
    CognitoUserSession? session;
    try {
      session = await cognitoUser.authenticateUser(authDetails);
    } on CognitoUserNewPasswordRequiredException catch (e) {
      // handle New Password challenge
    } on CognitoUserMfaRequiredException catch (e) {
      // handle SMS_MFA challenge
    } on CognitoUserSelectMfaTypeException catch (e) {
      // handle SELECT_MFA_TYPE challenge
    } on CognitoUserMfaSetupException catch (e) {
      // handle MFA_SETUP challenge
    } on CognitoUserTotpRequiredException catch (e) {
      // handle SOFTWARE_TOKEN_MFA challenge
    } on CognitoUserCustomChallengeException catch (e) {
      // handle CUSTOM_CHALLENGE challenge
    } on CognitoUserConfirmationNecessaryException catch (e) {
      // handle User Confirmation Necessary
    } catch (e) {
      print(e);
    }
  }
}