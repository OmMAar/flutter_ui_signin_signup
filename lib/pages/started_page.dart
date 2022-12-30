import 'package:flutter/material.dart';
import 'package:learn_flutter_auth_design/constants/app_assets.dart';
import 'package:learn_flutter_auth_design/constants/app_colors.dart';
import 'package:learn_flutter_auth_design/constants/app_radius.dart';
import 'package:learn_flutter_auth_design/pages/sign_in_page.dart';
import 'package:learn_flutter_auth_design/pages/sign_up_page.dart';
import 'package:learn_flutter_auth_design/widgets/app_button_widget.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage(AppAssets.starterBGImage),
                colorFilter: ColorFilter.mode(
                    AppColors.primaryColor.withOpacity(0.5), BlendMode.darken),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.appWhite,
                  borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(AppRadius.radius50))),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Let's discover the people and events around you.",
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppButtonWidget(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()));
                    },
                    minWidth: width,
                    radius: AppRadius.radius8,
                    textStr: "Sign In",
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Or Create Account",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 13
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_right_alt,size: 24,color: AppColors.primaryColor,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
