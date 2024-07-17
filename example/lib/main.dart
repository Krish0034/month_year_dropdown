import 'package:flutter/material.dart';
import 'package:month_year_dropdown/month_year.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController controller1= TextEditingController();
  final TextEditingController controller2= TextEditingController();
  final TextEditingController controller3= TextEditingController();
  final TextEditingController controller4= TextEditingController();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Month Year Dropdown Example'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(

              children: [
                const Text('Month and Year Example'),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MonthYearDropdown(
                        controller: controller1,
                        padding: const EdgeInsets.all(8.0),
                        itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                        monthsEnable: true,
                        textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                        textCapitalization: TextCapitalization.words,
                        readOnly: true,
                        textInputType: TextInputType.text,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        initialText: 'Select Month/Year',
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selection',
                        hintText: 'Tap to select',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Year',
                        innerLabelTextStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: MonthYearDropdown(
                        controller: controller2,
                        padding: const EdgeInsets.all(8.0),
                        itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                        yearsEnable: true,
                        monthsEnable: false,
                        textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                        textCapitalization: TextCapitalization.words,
                        readOnly: true,
                        textInputType: TextInputType.text,
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.done,
                        initialText: 'Select Month/Year',
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selection',
                        hintText: 'Tap to select',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Year',
                        innerLabelTextStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Month Example'),
                const SizedBox(height: 10,),
                MonthYearDropdown(
                  controller: controller3,
                  padding: const EdgeInsets.all(8.0),
                  itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                  monthsEnable: true,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  textInputType: TextInputType.text,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  initialText: 'Select Month/Year',
                  suffixIconColor: Colors.blue,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  errorText: 'Invalid selection',
                  hintText: 'Tap to select',
                  hintTextStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  borderColor: Colors.blue,
                  errorBorderColor: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  innerLabelText: 'Choose Month/Year',
                  innerLabelTextStyle: const TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 10,),
                const Text('Year Example'),
                const SizedBox(height: 10,),
                MonthYearDropdown(
                  controller: controller4,
                  padding: const EdgeInsets.all(8.0),
                  itemTextStyle: const TextStyle(color: Colors.black, fontSize: 16),
                  yearsEnable: true,
                  monthsEnable: false,
                  textStyle: const TextStyle(color: Colors.black, fontSize: 18),
                  textCapitalization: TextCapitalization.words,
                  readOnly: true,
                  textInputType: TextInputType.text,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  textInputAction: TextInputAction.done,
                  initialText: 'Select Month/Year',
                  suffixIconColor: Colors.blue,
                  contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  errorText: 'Invalid selection',
                  hintText: 'Tap to select',
                  hintTextStyle: const TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  borderColor: Colors.blue,
                  errorBorderColor: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  innerLabelText: 'Choose Month/Year',
                  innerLabelTextStyle: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}