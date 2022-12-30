import 'package:flutter/material.dart';
import 'package:learn_flutter_auth_design/constants/app_colors.dart';

/// reusable widgets
class AuthTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final TextInputType? keyboardType;

  const AuthTextFormField(
      {Key? key,
      required this.hintText,
      this.controller,
      this.onChange,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.appWhite, fontSize: 16),
      controller: controller,
      onChanged: onChange,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.appGery, fontSize: 13),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGery, width: 1.0),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGery, width: 1.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appWhite, width: 1.5),
          )),
    );
  }
}


class AuthTextFormPasswordField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final Function(String)? onChange;
  final TextInputType? keyboardType;

  const AuthTextFormPasswordField(
      {Key? key,
        required this.hintText,
        this.controller,
        this.onChange,
        this.keyboardType})
      : super(key: key);

  @override
  State<AuthTextFormPasswordField> createState() => _AuthTextFormPasswordFieldState();
}

class _AuthTextFormPasswordFieldState extends State<AuthTextFormPasswordField> {

  bool _isSecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: AppColors.appWhite, fontSize: 16),
      controller: widget.controller,
      onChanged: widget.onChange,
      obscureText: _isSecure,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.appGery, fontSize: 13),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGery, width: 1.0),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appGery, width: 1.0),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.appWhite, width: 1.5),
          ),
      suffixIcon: InkWell(
        onTap: (){
          setState(() {
            _isSecure = !_isSecure;
          });
        },
        child: Icon(
          _isSecure? Icons.visibility : Icons.visibility_off,
          color: AppColors.appGery,
        ),
      )

      ),
    );
  }
}