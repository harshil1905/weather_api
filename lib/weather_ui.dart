import 'package:csc_picker/csc_picker.dart';
import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';

class WeatherUi extends StatefulWidget {
  const WeatherUi({super.key});

  @override
  State<WeatherUi> createState() => _WeatherUiState();
}

class _WeatherUiState extends State<WeatherUi> {
  List<String> country = [];
  String? selctedcountry;
  List<String> state = [];
  String? selctedstate;
  List<String> city = [];
  String? selctecity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CSCPicker(
              layout: Layout.vertical,
              flagState: CountryFlag.DISABLE,
              // ignore: non_constant_identifier_names
              onCountryChanged: (Country) {},
              countryDropdownLabel: 'country',
              onStateChanged: (State) {},
              stateDropdownLabel: 'state',
              onCityChanged: (City) {},
              cityDropdownLabel: 'city',
              dropdownDialogRadius: 30,
              searchBarRadius: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
