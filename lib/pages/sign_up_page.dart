import 'package:flutter/material.dart';
import 'package:learn_flutter_auth_design/constants/app_colors.dart';
import 'package:learn_flutter_auth_design/constants/app_radius.dart';
import 'package:learn_flutter_auth_design/widgets/app_button_widget.dart';
import 'package:learn_flutter_auth_design/widgets/auth_text_fields_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? _agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appWhite,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
      ),
      body: Container(
        color: AppColors.primaryColor,
        height: height,
        width: width,
        child: Column(
          children: [
            /// top widget
            Container(
              width: width,
              padding: const EdgeInsets.fromLTRB(32, 8.0, 32, 36),
              decoration: const BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(AppRadius.radius50))),
              child: const Text(
                "Create\nAccount.",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),

            /// here the widget which contains the sign in fields
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const AuthTextFormField(
                    hintText: "First Name",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AuthTextFormField(
                    hintText: "Last Name",
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AuthTextFormField(
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AuthTextFormPasswordField(
                    hintText: "Password",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AuthTextFormPasswordField(
                    hintText: "Confirm Password",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _agreeTerms,
                        onChanged: (value) {
                          setState(() {
                            _agreeTerms = value;
                          });
                        },
                        checkColor: AppColors.primaryColor,
                        activeColor: AppColors.appWhite,
                        fillColor:
                            MaterialStateProperty.all(AppColors.appWhite),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppRadius.radius4)),
                      ),
                      const Text(
                        "Agree to terms and conditions",
                        style: TextStyle(
                            color: AppColors.appWhite,
                            fontSize: 13,
                            fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AppButtonWidget(
                    onPressed: () {},
                    textStr: "Sign Up",
                    minWidth: width,
                    backgroundColor: AppColors.appWhite,
                    textColor: AppColors.primaryColor,
                    radius: AppRadius.radius8,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text(
                       "Already have an account?",
                       style: TextStyle(
                         color: AppColors.appWhite,
                         fontSize: 13,
                         fontWeight: FontWeight.w400
                       ),
                     ),
                     TextButton(
                       onPressed: () {},
                       child: const Text(
                         "Sign Up",
                         style: TextStyle(
                             color: AppColors.appWhite,
                             fontWeight: FontWeight.w700,
                             fontSize: 13),
                       ),
                     )
                   ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
