import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: generatedColors().bg,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  
                  height:  w/4,
                  width: w,
                  
                  decoration: BoxDecoration(
                    color: generatedColors().yellow,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(65), 
                      bottomRight: Radius.circular(65)
                      )
                  ),
                  child: Stack(
                    
                    children: [
                      Positioned(
                        left: w * 0.025,
                        top: w * 0.005,
                        child: Text("PORTFOLIO",
                          style: GoogleFonts.poppins(
                            fontSize: w/28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: w/40
                          ),),
                      ),

                      Positioned(
                        top: w * 0.09,
                        left: w * 0.35,
                        child: Text(
                            'I am',
                              style: GoogleFonts.poppins(
                                fontSize: w/45,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold
                              ),),
                                            
                      ),
                      Positioned(
                        top: w * 0.115,
                        left: w * 0.345,
                        child: Text(
                            'AADHITHYA V',
                              style: GoogleFonts.poppins(
                                fontSize: w/30,
                                letterSpacing: 8,
                                fontWeight: FontWeight.bold
                              ),),
                                            
                      ),
                      
                      Positioned(
                        width: w / 3,
                        height: w / 4,
                        
                        left: w * 0.6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(65)
                            )
                          ),
                          child: Image.asset(
                            "assets/aadhi-r.png",
                            
                            fit: BoxFit.contain,
                          ),
                        ),),
                    ],
                  ),
                ),
                SizedBox(
                  height: w * 0.015,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: w * 0.02),
                  child: Text(
                    "About Me",
                    style: GoogleFonts.poppins(
                        fontSize: w/60,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                  ),
                ),
                SizedBox(
                  height: w * 0.001,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    height:  w/4,
                    width: w,
                    
                    decoration: BoxDecoration(
                      color: generatedColors().yellow,
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                      "I'm a Diploma graduate in Production Engineering (Class of 2024, 94%) with a passion for technology and problem-solving. "
                      "Despite my academic background, I'm deeply enthusiastic about computer science and have hands-on experience with Flutter, AWS, Firebase, VS Code, Git, and version control systems. "
                      "I thrive on challenges and am always eager to learn and innovate.",
                      style: GoogleFonts.montserrat(
                        fontSize: w/60,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}