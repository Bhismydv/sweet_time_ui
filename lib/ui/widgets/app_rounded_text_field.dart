import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweet_time_ui/styles/app_colors.dart';

class AppRoundedTextField extends StatelessWidget {
 /* final String label;*/
  final String? initialValue;
  final String? hintText;
  final Function(String) onChanged;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final bool? obsureText, readOnly;
  final Function()? onTap;
  final TextEditingController? controller;
  final List<TextInputFormatter> formatters;
  final int? maxLength, maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final IconData? prefixIconData;
  final double? radius;
  final Function()? onTapShowPassVisibility;

  AppRoundedTextField(
      {/*required this.label,*/
        required this.onChanged,
        this.hintText,
        this.initialValue,
        this.textInputType = TextInputType.text,
        this.validator,
        this.onTap,
        this.controller,
        this.maxLines,
        this.onTapShowPassVisibility,
        this.contentPadding,
        this.prefixIconData,
        this.formatters = const [],
        this.obsureText = false,
        this.maxLength,
        this.radius,
        this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      initialValue: initialValue,
      onChanged: onChanged,
      keyboardType: textInputType,
      validator: validator,
      controller: controller,
      obscureText: obsureText ?? false,
      readOnly: readOnly ?? false,
      onTap: onTap,
      maxLines: maxLines ?? 1,
      maxLength: maxLength,
      inputFormatters: formatters,
      //textCapitalization: TextCapitalization.characters,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          isDense: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius?? 10.0),
         borderSide: BorderSide(color: AppColors.primaryColor)
        ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius?? 10.0),
            borderSide: BorderSide(color: AppColors.primaryColor)
          ),
          prefixIcon: prefixIconData != null ? Icon(prefixIconData) : null,
          filled: true,
          /*label: Text(
            label,
          )*/
          suffixIcon: onTapShowPassVisibility != null
              ? GestureDetector(
              onTap: onTapShowPassVisibility,
              child: Icon(obsureText! ? Icons.visibility_off : Icons.visibility, color: AppColors.primaryColor,))
              : null,
          alignLabelWithHint: true,
          contentPadding: contentPadding,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
          fillColor: Colors.white70),
      style: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textColor,
        shadows: [
          Shadow(
              color: AppColors.primaryColor.withOpacity(.5),
              offset: Offset(5, 5),
              blurRadius: 4.0
          )
        ]
      ),
    );
  }
}