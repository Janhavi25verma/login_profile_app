import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key});

  @override
  State<PhoneTextField> createState() => _State();
}

class _State extends State<PhoneTextField> {

  TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: "Enter phone number",
          hintStyle: const TextStyle(fontSize: 18),
          prefixIcon: Container(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(

              padding: const EdgeInsets.only(bottom: 10.5),
              onPressed: () {
                showCountryPicker(context: context,countryListTheme: const CountryListThemeData(bottomSheetHeight: 500) ,onSelect: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },);
              },
              icon: Text(
                "${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}"
                , style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}


// class PhoneTextField extends StatefulWidget {
//   PhoneTextField({super.key});
//
//   TextEditingController phoneController = TextEditingController();
//   Country selectedCountry = Country(
//       phoneCode: "91",
//       countryCode: "IN",
//       e164Sc: 0,
//       geographic: true,
//       level: 1,
//       name: "India",
//       example: "India",
//       displayName: "India",
//       displayNameNoCountryCode: "IN",
//       e164Key: "");
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: phoneController,
//       keyboardType: TextInputType.number,
//       decoration: InputDecoration(
//           hintText: "Enter phone number",
//           prefixIcon: Container(
//             padding: const EdgeInsets.all(8.0),
//             child: IconButton(
//               padding: const EdgeInsets.only(bottom: 10.5),
//               onPressed: () {
//                showCountryPicker(context: context, onSelect: (value){
//                  setState((){
//                  selectedCountry=value;
//                  });
//                },);
//               },
//               icon: Text(
//                 "${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}"
//                 ,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//               ),
//             ),
//           )),
//     );
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//
//   }
// }
