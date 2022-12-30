import 'package:flutter/material.dart';
import 'package:learn_flutter_auth_design/constants/app_colors.dart';
import 'package:learn_flutter_auth_design/constants/app_radius.dart';
import 'package:learn_flutter_auth_design/widgets/app_button_widget.dart';
import 'package:learn_flutter_auth_design/widgets/auth_text_fields_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appWhite,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
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
                "Welcome\nBack!",
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
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value;
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
                        "Remember Me",
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
                    textStr: "Sign In",
                    minWidth: width,
                    backgroundColor: AppColors.appWhite,
                    textColor: AppColors.primaryColor,
                    radius: AppRadius.radius8,
                  ),

                  const SizedBox(height: 10,),

                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        "Forget Password ?",
                        style: TextStyle(
                          color: AppColors.appWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 13
                        ),
                      ),
                    ),
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
