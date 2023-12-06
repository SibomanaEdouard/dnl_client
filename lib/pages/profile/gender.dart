import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int _value = 0;

  final title6 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  final text1 = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final  visibleText = TextStyle(fontSize: 15,fontWeight: FontWeight.w500);
  bool firstValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 60,
            height: 60,
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pink[50],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset("assets/icons/gender.png"),
          ),
          const SizedBox(
            height: 15,
          ),
          Text("What’s your gender?",
              style: GoogleFonts.manrope(textStyle: title6)),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Male",
                          style: GoogleFonts.manrope(textStyle: text1)),
                    ),
                    Radio<int>(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red; // Color when selected
                          }
                          return Colors.grey; // Color when not selected
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Female",
                          style: GoogleFonts.manrope(textStyle: text1)),
                    ),
                    Radio<int>(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.red; // Color when selected
                          }
                          return Colors.grey; // Color when not selected
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 280,),
                Row(
                  children: [
                    Checkbox(
                      value: firstValue,
                      onChanged: (value) {
                        setState(() {
                          firstValue = value!;
                        });
                      },
                      activeColor: firstValue ? Colors.red : Colors.transparent,
                    ),// Add some spacing between the checkbox and the text
                    Text("Visible on my profile",style: GoogleFonts.manrope(textStyle: visibleText),),
                  ],
                ),
            ],
          )
        ],
      ),
    );
  }
}
