import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button({super.key,required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(onPressed: onPressed,style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shadowColor: Colors.grey,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero),
      ), child:  Text(text,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),),
    );
  }
}
