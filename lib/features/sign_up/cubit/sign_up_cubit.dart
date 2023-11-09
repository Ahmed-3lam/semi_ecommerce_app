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

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  final ApiHelper _apiHelper = getIt<ApiHelper>();
  LoginModel loginModel = LoginModel();

  void signUp({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) async {
    emit(SignUpLoadingState());

    await _apiHelper.requestFutureData<LoginModel>(Method.post,
        url: Api.register,
        params: {
          "email": email,
          "password": password,
          "name": name,
          "phone": phone,
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
        emit(SignUpSuccessState());
      } else {
        emit(SignUpErrorState());
      }
    }, onError: (code, msg) {
      emit(SignUpErrorState());
    });
  }
}
