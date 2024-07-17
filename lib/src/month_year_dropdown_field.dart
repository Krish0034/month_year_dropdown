import 'package:flutter/material.dart';

import '../month_year.dart';

class MonthYearDropdownField extends State<MonthYearDropdown> {

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  void selectMonth(BuildContext context, String value) {
    widget.controller.text = value;
  }

  void selectYear(BuildContext context, String value) {
    widget.controller.text = value;
  }

  List<String> _getMonthList() {
    return [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
  }

  List<String> _getShortMonthList() {
    return [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
  }

  List<String> _getYearList() {
    return List.generate(101, (index) => (DateTime.now().year - index).toString());
  }

  List<PopupMenuEntry<String>> _getPopupMenuItems() {
    List<PopupMenuEntry<String>> items = [];
    if (widget.monthsEnable) {
      List<String> monthList=[];
      setState(() {
        monthList= widget.monthFormate == 'MMM' ? _getShortMonthList() : _getMonthList();
      });

      items.addAll(monthList.map(
            (month) => PopupMenuItem<String>(
          value: month,
          child: Text(month, style: widget.itemTextStyle),
        ),
      ));
    }
    if (widget.yearsEnable) {
      items.addAll(_getYearList().map((year) => PopupMenuItem<String>(
        value: year,
        child: Text(year, style: widget.itemTextStyle),
      ),),);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMenu(
          context: context,
          position: widget.menuPosition?? const RelativeRect.fromLTRB(0, 0, 0, 0),
          items: _getPopupMenuItems(),
          elevation: 8,
        ).then((value) {
          if (value != null) {
            if ((widget.monthsEnable) && (widget.monthFormate == 'MMM'? _getShortMonthList().contains(value) :_getMonthList().contains(value))) {
              selectMonth(context, value);
            } else if ((widget.yearsEnable) && _getYearList().contains(value)) {
              selectYear(context, value);
            }
          }
        });
      },
      child: AbsorbPointer(
        absorbing: true,
        child: TextFormField(
          controller: widget.controller,
          style: widget.textStyle ?? const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
          textCapitalization: widget.textCapitalization ?? TextCapitalization.sentences,
          readOnly: true,
          keyboardType: widget.textInputType,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmitted,
          validator: widget.validator,
          autovalidateMode: widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
          cursorColor: Colors.black,
          textInputAction: widget.textInputAction,
          autocorrect: false,
          enableSuggestions: false,
          decoration: widget.decoration ?? InputDecoration(
            label: widget.innerLabelText != null
                ? Text(
              widget.innerLabelText ?? '',
              style: widget.innerLabelTextStyle ?? const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
            )
                : null,
            counterText: '',
            alignLabelWithHint: false,
            suffixIcon: widget.suffixIcon,
            suffixIconColor: widget.suffixIconColor ?? Colors.black,
            contentPadding: widget.contentPadding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            prefixIcon: widget.prefixIcon,
            prefix: widget.prefix,
            errorText: widget.errorText,
            hintText: widget.hintText,
            isDense: false,
            filled: true,
            fillColor: widget.fillColor ?? Colors.white,
            hintStyle: widget.hintTextStyle ?? const TextStyle(color: Colors.black),
            errorStyle: widget.errorTextStyle,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? Colors.black,
              ),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? Colors.black,
              ),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.errorBorderColor ?? Colors.red,
              ),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.borderColor ?? Colors.black,
              ),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: widget.errorBorderColor ?? Colors.red,
              ),
              borderRadius: widget.borderRadius ?? BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
