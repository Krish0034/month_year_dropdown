import 'package:flutter/material.dart';
import '../month_year.dart';

class MonthYearDropdown extends StatefulWidget {
  final String? monthFormate;
  final EdgeInsetsGeometry? padding;
  final TextStyle? itemTextStyle;
  final bool monthsEnable;
  final bool yearsEnable;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final TextCapitalization? textCapitalization;
  final bool? readOnly;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final TextInputAction? textInputAction;
  final String? initialText;
  final InputDecoration? decoration;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon;
  final Widget? prefix;
  final String? errorText;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final TextStyle? errorTextStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Color? errorBorderColor;
  final BorderRadius? borderRadius;
  final String? innerLabelText;
  final TextStyle? innerLabelTextStyle;
  final RelativeRect? menuPosition;

  const MonthYearDropdown({super.key,
    this.padding,
    this.itemTextStyle,
    this.monthsEnable = true,
    this.yearsEnable = false,
    required this.controller,
    this.textStyle,
    this.textCapitalization,
    this.readOnly,
    this.textInputType,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.autoValidateMode,
    this.textInputAction,
    this.initialText,
    this.decoration,
    this.suffixIcon,
    this.suffixIconColor,
    this.contentPadding,
    this.prefixIcon,
    this.prefix,
    this.errorText,
    this.hintText,
    this.hintTextStyle,
    this.errorTextStyle,
    this.fillColor,
    this.borderColor,
    this.errorBorderColor,
    this.borderRadius,
    this.innerLabelText,
    this.innerLabelTextStyle,
    this.monthFormate='MMM', this.menuPosition,
  }) : assert(monthsEnable != yearsEnable, 'Only one of monthsEnable or yearsEnable can be true');

  @override
  State<StatefulWidget> createState() => MonthYearDropdownField();
}
