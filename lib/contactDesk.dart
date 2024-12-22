import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class ContactDesk extends StatefulWidget {
  final routeName = '/contact';
  const ContactDesk({super.key});

  @override
  State<ContactDesk> createState() => _ContactDeskState();
}

void _copyClipboard(BuildContext context,String text){
  Clipboard.setData(ClipboardData(text: text.trim(),));
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Text copied to clipboard!')),
    );;
}

class _ContactDeskState extends State<ContactDesk> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: generatedColors().bg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Container(
            height: h,
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact",
                style: GoogleFonts.montserrat(
                          fontSize:  w * 0.03 ,
                          letterSpacing: 3.5,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255)
                        ),),
                        SizedBox(height: w * 0.05,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 450,
                    width: w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(137, 53, 53, 53),
                      border: Border.all(
                        width: 5,
                        color: generatedColors().yellow
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      shape: BoxShape.rectangle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35),
                      child: Column(
                        children: [
                          Row(//Mail
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.mail_outline_rounded,
                                  size: w * 0.025,
                                  color: Colors.white,),
                                  SizedBox(height: 15,),
                                  Text(" Email : ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 55,
                                    letterSpacing: 1.5
                                  ),),
                                  
                                ],
                              ),

                              SizedBox(height: w * 0.015,),
                              TextButton(
                                onPressed: (){
                                  _copyClipboard(context,"aadhithyavenkatesan1@gmail.com");
                                }, 
                                child: Text("aadhithyavenkatesan1@gmail.com ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 65,
                                    letterSpacing: 1.5,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color.fromARGB(255, 255, 255, 255), // Set color for underline
                                    decorationThickness: 2,
                                  ),),),
                              SizedBox(width: w * 0.33,),
                              IconButton(
                                onPressed: (){
                                  _copyClipboard(context,"aadhithyavenkatesan1@gmail.com");
                                }, 
                                icon: Icon(
                                  Icons.copy_rounded,
                                  size: w * 0.025,
                                  color: Colors.white))
                            ],
                          ),
                          SizedBox(height: w * 0.025,),
                          Row(//Linked In
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.linkedin, // Heart icon
                                    size: w * 0.025,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  SizedBox(height: 15,),
                                  Text(" Linked In : ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 55,
                                    letterSpacing: 1.5
                                  ),),
                                  
                                ],
                              ),

                              SizedBox(height: w * 0.015,),
                              TextButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://www.linkedin.com/in/aadhithya-venkatesan/");
                                }, 
                                child: Text("https://www.linkedin.com/in/aadhithya-venkatesan/ ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 65,
                                    letterSpacing: 1.5,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color.fromARGB(255, 255, 255, 255), // Set color for underline
                                    decorationThickness: 2,
                                  ),),),
                              SizedBox(width: w * 0.0925,),
                              IconButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://www.linkedin.com/in/aadhithya-venkatesan/");
                                }, 
                                icon: Icon(
                                  Icons.copy_rounded,
                                  size: w * 0.025,
                                  color: Colors.white)),
                          
                        ],
                      ),
                      SizedBox(height: w * 0.025,),
                          Row(//Git Hub
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.github, // Heart icon
                                    size: w * 0.025,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    
                                  SizedBox(height: 15,),
                                  Text(" Git Hub : ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 55,
                                    letterSpacing: 1.5
                                  ),),
                                  
                                ],
                              ),

                              SizedBox(height: w * 0.035,),
                              TextButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://github.com/Aadhithyavenkatesan");
                                }, 
                                child: Text("https://github.com/Aadhithyavenkatesan",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 65,
                                    letterSpacing: 1.5,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color.fromARGB(255, 255, 255, 255), // Set color for underline
                                    decorationThickness: 2,
                                  ),),),
                              SizedBox(width: w * 0.235,),
                              IconButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://github.com/Aadhithyavenkatesan");
                                }, 
                                icon: Icon(
                                  Icons.copy_rounded,
                                  size: w * 0.025,
                                  color: Colors.white))
                            ],
                          ),
                      SizedBox(height: w * 0.025,),
                          Row(//Kaggle
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.kaggle, // Heart icon
                                    size: w * 0.025,
                                    color: const Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    
                                  SizedBox(height: 15,),
                                  Text(" Kaggle : ",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 55,
                                    letterSpacing: 1.5
                                  ),),
                                  
                                ],
                              ),

                              SizedBox(height: w * 0.035,),
                              TextButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://www.kaggle.com/aadhithyavenkatesan");
                                }, 
                                child: Text("https://www.kaggle.com/aadhithyavenkatesan",
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontSize: w / 65,
                                    letterSpacing: 1.5,
                                    decoration: TextDecoration.underline,
                                    decorationColor: const Color.fromARGB(255, 255, 255, 255), // Set color for underline
                                    decorationThickness: 2,
                                  ),),),
                              SizedBox(width: w * 0.215,),
                              IconButton(
                                onPressed: (){
                                  _copyClipboard(context,"https://www.kaggle.com/aadhithyavenkatesan");
                                }, 
                                icon: Icon(
                                  Icons.copy_rounded,
                                  size: w * 0.025,
                                  color: Colors.white))
                            ],
                          )
              ]),
                  ),
                )
            )],
            ),
          ),
        ),
      ),
    );
  }
}