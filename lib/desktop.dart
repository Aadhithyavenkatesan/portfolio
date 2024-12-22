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
            controller: ScrollController(
              initialScrollOffset: 1.0
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(//Header Section
                  
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
                            letterSpacing: w/60
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
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                  color: Colors.black26, 
                                  blurRadius: 5, 
                                  offset: Offset(6, 4), 
              ),
                                ]
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
                  height: w * 0.019,
                ),
                Padding(//About Me Section
                  padding:  EdgeInsets.only(left: w * 0.045),
                  child: Text(
                    "About Me",
                    style: GoogleFonts.montserrat(
                        fontSize: w/60,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Padding(//About Me Content Section
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Container(
                    height:  w/7.8,
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
                      style: GoogleFonts.openSans(
                        fontSize: w/70,
                        //letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),),
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.019,
                ),
                Padding(//Education Section
                  padding:  EdgeInsets.only(left: w * 0.045),
                  child: Text(
                    "Education",
                    style: GoogleFonts.montserrat(
                        fontSize: w/60,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Padding(//Education content Section
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Container(
                    height:  w/6.5,
                    width: w,
                    
                    decoration: BoxDecoration(
                      color: generatedColors().yellow,
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "SSLC, The Gugai Higher Secondary School",
                              style: GoogleFonts.roboto(
                                fontSize:  w/60,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),),
                              Text(
                              "Salem,IN",
                              style: GoogleFonts.roboto(
                                fontSize:w/75,
                                letterSpacing: 1,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),),
                            ],
                          ),
                          SizedBox(height: w * 0.015,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              "Diploma in Production Engineering,",
                              style: GoogleFonts.roboto(
                                fontSize:  w/60,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),),
                              Text(
                              "Salem,IN",
                              style: GoogleFonts.roboto(
                                fontSize:  w/75,
                                letterSpacing: 1,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),),
                            ],
                          ),
                          Text(
                              "Thiagarajar Polytechnic College",
                              style: GoogleFonts.roboto(
                                fontSize:  w/60,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.019,
                ),
                Padding(//Experience Section
                  padding:  EdgeInsets.only(left: w * 0.045),
                  child: Text(
                    "Experience",
                    style: GoogleFonts.montserrat(
                        fontSize: w/60,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    )
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65),
                  child: Container(
                    height:  w/9,
                    width: w,
                    
                    decoration: BoxDecoration(
                      color: generatedColors().yellow,
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                  "P S A, Avtec Powertrain Pvt Ltd",
                                  style: GoogleFonts.roboto(
                                    fontSize:  w/60,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black
                                  ),),
                                  Text(
                                  "Hosur,IN",
                                  style: GoogleFonts.roboto(
                                    fontSize:  w/75,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                  ),),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                              "C N C Operator",
                              style: GoogleFonts.roboto(
                                fontSize:  w/60,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w700,
                                color: Colors.black
                              ),),
                              Text(
                              "May 24 - Present",
                              style: GoogleFonts.roboto(
                                fontSize:  w/75,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),),
                                ],
                              )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}