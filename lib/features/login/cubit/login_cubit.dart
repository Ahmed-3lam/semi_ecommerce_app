import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:semi_ecommerce_app/core/Helpers/hivr_helper.dart';
import 'package:semi_ecommerce_app/core/dependencies/dependency_init.dart';
import 'package:semi_ecommerce_app/core/navigation/custom_navigation.dart';
import 'package:semi_ecommerce_app/core/navigation/routes.dart';
import 'package:semi_ecommerce_app/core/network/api/network_api.dart';
import 'package:semi_ecommerce_app/core/network/api_helper.dart';
import 'package:semi_ecommerce_app/features/login/model/LoginModel.dart';

import '../../../core/network/network_util.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final ApiHelper _apiHelper = getIt<ApiHelper>();
  LoginModel loginModel = LoginModel();

  void login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());

    await _apiHelper.requestFutureData<LoginModel>(Method.post,
        url: Api.login,
        params: {
          "email": email,
          "password": password,
        },
        options: Options(
          method: Method.post.toString(),
          headers: headers,
        ), onSuccess: (data) {
      loginModel = data!;
      if (loginModel.status == true) {
        HiveHelper.setToken(loginModel.data!.token!);
        headers["Authorization"] = loginModel.data?.token!;
        CustomNavigator.push(Routes.MAIN_SCREEN);
        emit(LoginSuccessState());
      } else {
        emit(LoginErrorState());
      }
    }, onError: (code, msg) {
      emit(LoginErrorState());
    });
  }
}
