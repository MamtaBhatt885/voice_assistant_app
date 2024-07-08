import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voice_assistant_app/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descriptionText;
  const FeatureBox({super.key,required this.color,required this.headerText, required this.descriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 ).copyWith(
          left: 15),
        child: Column(
          children: [

              Align(
                alignment: Alignment.centerLeft,
                child: Text(headerText,style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                
                ),),
              ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(descriptionText,style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontSize: 14,


              ),),
            )
          ],
        ),
      ),
    );
  }
}
