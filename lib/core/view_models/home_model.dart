

import 'package:wheelchair_shop/core/services/auth_service.dart';
import 'package:wheelchair_shop/core/view_models/base_model.dart';
import 'package:wheelchair_shop/locator.dart';

class HomeModel extends BaseModel {

  AuthService authService = locator<AuthService>();

  HomeModel(){
    authService = locator<AuthService>();
  }

}