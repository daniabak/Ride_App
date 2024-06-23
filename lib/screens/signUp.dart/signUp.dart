import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:phone_input/phone_input_package.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/string_manager.dart';
import 'package:rideshare_app/screens/signUp.dart/combleteSignUp.dart';
import 'package:rideshare_app/widgets/Titles.dart';
import 'package:rideshare_app/widgets/changeSign.dart';
import 'package:rideshare_app/widgets/myButton.dart';
import 'package:rideshare_app/widgets/myTextField.dart';
import 'package:rideshare_app/widgets/myTextFieldDate.dart';
import 'package:rideshare_app/widgets/my_sized_box.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController birthDate = TextEditingController();
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
                HeaderText(
                  text: StringManager.signup,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  textcolor: ColorManager.blackColor,
                ),
                const sizedBox30(),
                myTextFieldName(
                  readOnly: false,
                  fillColor: ColorManager.whiteColor,
                  circular: 4,
                  hintName: "First Name",
                  hintStyle: TextStyle(color: ColorManager.greyTextr),
                  nameController: firstName,
                  label: "",
                  validatorText: "",
                ),
                const sizedBox30(),
                myTextFieldName(
                  readOnly: false,
                  circular: 4,
                  hintName: "Last Name",
                  hintStyle: TextStyle(color: ColorManager.greyTextr),
                  nameController: lastName,
                  fillColor: ColorManager.whiteColor,
                  label: "",
                  validatorText: "",
                ),
                const sizedBox30(),
                myTextFieldName(
                  readOnly: false,
                  circular: 4,
                  hintName: "Username",
                  hintStyle: TextStyle(color: ColorManager.greyTextr),
                  nameController: username,
                  fillColor: ColorManager.whiteColor,
                  label: "",
                  validatorText: "",
                ),
                const sizedBox30(),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                const sizedBox50(),
                myTextFieldDate(
                  readOnly: false,
                  circular: 4,
                  hintName: "Birthdate",
                  hintStyle: TextStyle(color: ColorManager.greyTextr),
                  nameController: birthDate,
                  fillColor: ColorManager.whiteColor,
                  label: "",
                  validatorText: "",
                ),
                const sizedBox30(),
                Row(
                  children: [
                    Image.asset(
                        "${AssetsManager.imagesPath}/_check-circle.png"),
                    RichText(
                 
                        text: const TextSpan(children: [
                          TextSpan(
                              text: " By signing up. you agree to the ",
                              style: TextStyle(
                                  color: ColorManager.greyTextr, fontSize: 14)),
                          TextSpan(
                              text: "Terms of\n   service",
                              style: TextStyle(
                                color: ColorManager.primaryColor,
                                fontSize: 16,
                              )),
                          TextSpan(
                              text: " and",
                              style: TextStyle(
                                  color: ColorManager.greyTextr, fontSize: 14)),
                          TextSpan(
                              text: " Privacy policy",
                              style: TextStyle(
                                  color: ColorManager.primaryColor,
                                  fontSize: 16)),
                        ])),
                  ],
                ),
                const sizedBox30(),
                MyButton(
                    title: "Sign up",
                    fontsize: 18,
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SetPasswordSignUp(),
                      ));
                    },
                    colors: ColorManager.primaryColor,
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 14,
                    radius: 8),
                ChangeSign(
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SetPasswordSignUp(),
                      ));
                    },
                    textSize: 16,
                    textbuttonSize: 18,
                    text: "Already have an account?",
                    textbutton: "Sign in"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
