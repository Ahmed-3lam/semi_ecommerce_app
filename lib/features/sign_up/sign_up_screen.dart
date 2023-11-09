import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semi_ecommerce_app/core/navigation/custom_navigation.dart';
import 'package:semi_ecommerce_app/core/navigation/navigator.dart';
import 'package:semi_ecommerce_app/features/login/widgets/custom_text_field.dart';

import 'cubit/sign_up_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    textAlign: TextAlign.start,
                    "Welcome to Our \ngrocery hop",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 40,
                    ),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        CustomTextField(
                            height: height,
                            text: "Name",
                            controller: _nameController),
                        SizedBox(
                          height: height * .03,
                        ),
                        CustomTextField(
                            height: height,
                            text: "Email",
                            controller: _emailController),
                        SizedBox(
                          height: height * .03,
                        ),
                        CustomTextField(
                            height: height,
                            text: "Phone",
                            controller: _phoneController),
                        SizedBox(
                          height: height * .03,
                        ),
                        CustomTextField(
                          height: height,
                          text: "Password",
                          controller: _passwordController,
                          isPassword: true,
                        ),
                        SizedBox(
                          height: height * .1,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            BlocBuilder<SignUpCubit, SignUpState>(
                              builder: (context, state) {
                                if (state is SignUpLoadingState) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                return InkWell(
                                  onTap: () {
                                    context.read<SignUpCubit>().signUp(
                                        email: _emailController.text,
                                        password: _passwordController.text,
                                        name: _nameController.text,
                                        phone: _phoneController.text);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * .02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Alreday Have Account?"),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                CustomNavigator.push(Routes.LOGIN);
                              },
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
