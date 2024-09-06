import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rideshare_app/bloc/signup/signup_bloc.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/string_manager.dart';
import 'package:rideshare_app/core/utils/style_of_textField.dart';
import 'package:rideshare_app/widgets/Titles.dart';
import 'package:rideshare_app/widgets/back_app_bar.dart';
import 'package:rideshare_app/widgets/myButton.dart';
import 'package:rideshare_app/widgets/my_sized_box.dart';

class SetPasswordSignUp extends StatefulWidget {
  SetPasswordSignUp({super.key});
  @override
  State<SetPasswordSignUp> createState() => _SetPasswordSignUpState();
}

class _SetPasswordSignUpState extends State<SetPasswordSignUp> {
  TextEditingController confirmPassword = TextEditingController();

  TextEditingController password = TextEditingController();

  bool showPass = true;
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.whiteColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const sizedBox50(),
                  backAppBar(),
                  const sizedBox30(),
                  Center(
                    child: HeaderText(
                      text: "Set Password",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      textcolor: ColorManager.blackColor,
                    ),
                  ),
                  const sizedBox50(),
                  Center(
                    child: HeaderText(
                      text: "Set your Password",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      textcolor: ColorManager.blackColor,
                    ),
                  ),
                  const sizedBox30(),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscureText: showPass,
                        controller: password,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "required";
                          }
                          if (text.length < 6 && text.length > 0) {
                            return "passowrd is short";
                          }
                          return " ";
                        },
                        cursorColor: ColorManager.primaryColor,
                        decoration: decorationOfPasswordTextField(() {
                          setState(() {
                            showPass = !showPass;
                          });
                        }, showPass, "password", ColorManager.primaryColor,
                            ColorManager.errorColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: TextFormField(
                        controller: confirmPassword,
                        obscureText: showPassword,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "required";
                          }
                          if (text.length < 6 && text.length > 0) {
                            return "password is short";
                          }
                          if (confirmPassword.text != password.text) {
                            return "not match";
                          } else {
                            return " ";
                          }
                        },
                        cursorColor: ColorManager.primaryColor,
                        decoration: decorationOfPasswordTextField(() {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                            showPassword,
                            "Confirm password",
                            ColorManager.primaryColor,
                            ColorManager.errorColor)),
                  ),
                  const sizedBox30(),
                  BlocListener<SignupBloc, SignupState>(
                    listener: (context, state) {
                      if (state is SignUpLoaded) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.message),
                          backgroundColor: ColorManager.successColor,
                        ));
                        print(state.message);
                      } else if (state is SignUpOffline) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("no connection to internet"),
                          backgroundColor: ColorManager.errorColor,
                        ));
                      } else if (state is SignUpError) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(state.message),
                          backgroundColor: ColorManager.errorColor,
                        ));
                      } else if (state is SignUpLoading) {
                        Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                    child: MyButton(
                        title: "Register",
                        onpress: () {
                          context.read<SignupBloc>().add(
                                SecondSendInfo(
                                  password: password.text,
                                  confirmPassword: confirmPassword.text,
                                ),
                              );
                          context.read<SignupBloc>().add(
                                SendInfoCreateAccount(),
                              );
                        },
                        colors: ColorManager.primaryColor,
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 14,
                        radius: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
