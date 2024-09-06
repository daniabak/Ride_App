import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rideshare_app/bloc/login/login_bloc.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/style_maneger.dart';
import 'package:rideshare_app/core/utils/style_of_textField.dart';
import 'package:rideshare_app/models/login.dart';
import 'package:rideshare_app/screens/auth_screens/signUp.dart/combleteSignUp.dart';

import 'package:rideshare_app/widgets/back_app_bar.dart';
import 'package:rideshare_app/widgets/myButton.dart';
import 'package:rideshare_app/widgets/my_sized_box.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController passwordd = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        body: BlocProvider(
          create: (context) => LoginBloc(
              internetConnectionChecker:
                  InternetConnectionChecker.createInstance()),
          child: Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                sizedBox40(),
                const backAppBar(),
                const sizedBox30(),
                Text(
                  "Login with your phone number",
                  style: StyleManager.boldTextStyle(),
                ),
                const sizedBox30(),
                const sizedBox30(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IntlPhoneField(
                    controller: phone,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: ColorManager.errorColor),
                      ),
                    ),
                    initialCountryCode: 'SY',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: showPassword,
                      controller: passwordd,
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
                          showPassword = !showPassword;
                        });
                      }, showPassword, "password", ColorManager.primaryColor,
                          ColorManager.errorColor)),
                ),
                const sizedBox20(),
                const sizedBox30(),
                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginLoaded) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: ColorManager.successColor,
                      ));
                      print(state.message);
                    } else if (state is LoginOffline) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("no connection to internet"),
                        backgroundColor: ColorManager.errorColor,
                      ));
                    } else if (state is LoginError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: ColorManager.errorColor,
                      ));
                    } else if (state is LoginLoading) {
                      Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  child: MyButton(
                      title: "Login",
                      fontsize: 18,
                      onpress: () {
                        print(LoginModel(
                                password: passwordd.text, phone: phone.text)
                            .toMap());
                        context.read<LoginBloc>().add(SendInfoLogin(
                            userLogin: LoginModel(
                                password: passwordd.text, phone: phone.text)));
                      },
                      colors: ColorManager.primaryColor,
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 14,
                      radius: 8),
                ),
              ]),
            );
          }),
        ));
  }
}
