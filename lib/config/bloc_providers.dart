// // ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semi_ecommerce_app/features/home/cubit/home_cubit.dart';
import 'package:semi_ecommerce_app/features/login/cubit/login_cubit.dart';
import 'package:semi_ecommerce_app/features/sign_up/cubit/sign_up_cubit.dart';

MultiBlocProvider listOfBlocProviders(Widget child) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => HomeCubit()..getBanners()),
      BlocProvider(create: (context) => LoginCubit()),
      BlocProvider(create: (context) => SignUpCubit()),
    ],
    child: child,
  );
}
