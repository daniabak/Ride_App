import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/string_manager.dart';
import 'package:rideshare_app/screens/categories_screen.dart';
import 'package:rideshare_app/widgets/Titles.dart';
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("${AssetsManager.imagesPath}/angle-left.png"),
                      HeaderText(
                        text: "back",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
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
                    decoration: InputDecoration(
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        },
                        child: Icon(
                          showPass ? Icons.visibility_off : Icons.visibility,
                          color: ColorManager.primaryColor,
                        ),
                      ),
                      errorStyle: TextStyle(color: ColorManager.errorColor),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      fillColor: ColorManager.whiteColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor)),
                      hintText: "Password",
                      labelStyle: TextStyle(
                          fontSize: 77, color: ColorManager.primaryColor),
                    ),
                  ),
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
                    decoration: InputDecoration(
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(
                          showPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: ColorManager.primaryColor,
                        ),
                      ),
                      errorStyle: TextStyle(color: ColorManager.errorColor),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.errorColor),
                          borderRadius: BorderRadius.circular(12)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      fillColor: ColorManager.whiteColor,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.primaryColor),
                          borderRadius: BorderRadius.circular(12)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorManager.errorColor)),
                      hintText: "Confirm password",
                      labelStyle: TextStyle(
                          fontSize: 77, color: ColorManager.primaryColor),
                    ),
                  ),
                ),
                const sizedBox30(),
                MyButton(
                    title: "Register",
                    onpress: () {
                    
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoriesScreen()));
                    },
                    colors: ColorManager.primaryColor,
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 14,
                    radius: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
