import 'package:csc_picker/csc_picker.dart';

import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

// ignore: must_be_immutable
class CountryPicker extends StatefulWidget {
  CountryPicker({super.key, required this.title});

  @override
  State<CountryPicker> createState() => _CountryPickerState();

  String title;
}

class _CountryPickerState extends State<CountryPicker> {
  String? country;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Styles.textStyle,
        ),
        CSCPicker(
          showCities: false,
          showStates: false,
          defaultCountry: CscCountry.United_Arab_Emirates,
          dropdownDecoration: BoxDecoration(
            border: BorderDirectional(
              top: BorderSide.none,
              start: BorderSide.none,
              end: BorderSide.none,
              bottom: BorderSide(color: Styles.blueColor),
            ),
          ),
          onCountryChanged: (value) {
            setState(() {
              country = value;
            });
          },
          onStateChanged: (value) {
            setState(() {
              // stateValue = value;
            });
          },
          onCityChanged: (value) {
            setState(() {
              // cityValue = value;
            });
          },
        ),
      ],
    );
  }
}
