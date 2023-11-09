import 'package:semi_ecommerce_app/features/home/models/BannerModel.dart';
import 'package:semi_ecommerce_app/features/login/model/LoginModel.dart';

class EntityFactory {
  static T? generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BannerModel") {
      return BannerModel.fromJson(json) as T;
    } else if (T.toString() == "LoginModel") {
      return LoginModel.fromJson(json) as T;
    } else {
      return null;
    }
  }
}
