import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:semi_ecommerce_app/core/dependencies/dependency_init.dart';
import 'package:semi_ecommerce_app/core/network/api/network_api.dart';
import 'package:semi_ecommerce_app/core/network/network_util.dart';
import 'package:semi_ecommerce_app/features/home/models/BannerModel.dart';

import '../../../core/network/api_helper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final ApiHelper _apiHelper = getIt<ApiHelper>();

  BannerModel bannerModel = BannerModel();

  void getBanners() async {
    emit(HomeBannerLoading());
    await _apiHelper.requestFutureData<BannerModel>(Method.get,
        url: Api.banners,
        options: Options(
          method: Method.get.toString(),
          headers: headers,
        ), onSuccess: (data) {
      bannerModel = data!;

      emit(HomeBannerSuccess());
    }, onError: (code, msg) {
      emit(HomeBannerError());
    });
  }

  static XFile? photo;
  static File? photoFile;

  Future<void> pickPicture() async {
    final ImagePicker picker = ImagePicker();
    photo = await picker.pickImage(source: ImageSource.gallery);
    photoFile = File(photo!.path);
  }
}
