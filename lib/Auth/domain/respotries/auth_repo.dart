import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation(
      {@required String? name,
      @required String? phoneNo,
      @required String? address});
}
