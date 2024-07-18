import 'package:flutter/material.dart';
import 'package:month_year_dropdown/month_year.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController controller1= TextEditingController();
  final TextEditingController controller2= TextEditingController();
  final TextEditingController controller3= TextEditingController();
  final TextEditingController controller4= TextEditingController();
  bool isTreu=false;

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
                isTreu?        Row(
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
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selectionafjo;jf',
                        hintText: 'Tap to selectagdfagad',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Yearasfdfs',
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
                        suffixIconColor: Colors.blue,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        errorText: 'Invalid selectionasfdafsdfa',
                        hintText: 'Tap to selectadfsdfasasd',
                        hintTextStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        borderColor: Colors.blue,
                        errorBorderColor: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        innerLabelText: 'Choose Month/Yearafsdsaf',
                        innerLabelTextStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ):
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

                GestureDetector(
                  onTap: () {
                    setState(() {
                      print("on tap");
                      isTreu=true;
                    });
                  },
                  child: AbsorbPointer(
                    child: Container(
                      color: Colors.red,
                      height: 50,
                        child: const Text("dafafakfdjafj")),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
