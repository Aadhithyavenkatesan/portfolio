import 'dart:io';
import 'dart:html' as html;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/contactDesk.dart';
import 'package:portfolio/utils/colors.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}
void downloadFile(Uint8List data, String filename, String mimeType) {
    final blob = html.Blob([data], mimeType);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement()
      ..href = url
      ..download = filename
      ..style.display = 'none';

    html.document.body?.append(anchor);
    anchor.click();
   // html.document.body?.removeChild(anchor);
    html.Url.revokeObjectUrl(url);
  }
   // Function to download PDF from assets
  Future<void> downloadPdfFromAssets() async {
    try {
      // Load the PDF file as bytes from the assets folder
      final ByteData data = await rootBundle.load('assets/Aadhi-resume.pdf');
      final Uint8List bytes = data.buffer.asUint8List();

      // Trigger the download
      downloadFile(bytes, 'Aadhi-resume.pdf', 'application/pdf');
    } catch (e) {
      print('Error downloading PDF: $e');
    }
  }
class FileDownloader {
  final Dio dio = Dio();

  /// Downloads a file from a URL and saves it locally.
  Future<void> downloadFile(String url, String filename) async {
    try {
      // Get the local directory to save the file
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$filename';

      // Use Dio to download the file
      final response = await dio.download(
        url,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            print('Progress: ${(received / total * 100).toStringAsFixed(0)}%');
          }
        },
      );

      if (response.statusCode == 200) {
        print('File downloaded successfully to: $filePath');
      } else {
        print('Failed to download file. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error downloading file: $e');
    }
  }
}
class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final downloader = FileDownloader();
  const fileUrl = 'https://drive.google.com/file/d/1SmXLKaMhELW9lSuT5trnVBGucmyjN72V/view?usp=sharing'; // Replace with your file URL
  const fileName = 'Aadhi-resume.pdf';
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
                    borderRadius:  BorderRadius.only(
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
                    child: Padding(//Experience content Section
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
                                  "P S A, Avtec Powertrain Pvt Ltd,",
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
                SizedBox(height: w * 0.05,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(//Resume
                        width: w * 0.15,
                        height: w * 0.045,
                        child: FloatingActionButton(
                          onPressed: ()async{
                            downloadPdfFromAssets();
                           await downloader.downloadFile(fileUrl, fileName);
                          },
                          elevation: 2.0, 
                          backgroundColor: generatedColors().yellow,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Resume ",
                                      style: GoogleFonts.poppins(
                                        fontSize:  w/60,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black
                                      ),),
                              Icon(Icons.download_rounded,
                              color: Colors.black)
                            ],
                          )),
                      ),
                      Container(
                        width: w * 0.15,
                        height: w * 0.045,
                        child: FloatingActionButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ContactDesk()),
                              );
                          }, 
                          elevation: 2.0, 
                          backgroundColor: generatedColors().yellow,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Contact ",
                                      style: GoogleFonts.poppins(
                                        fontSize:  w/60,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black
                                      ),),
                              Icon(
                                Icons.link_rounded,
                                color: Colors.black,)
                            ],
                          )),
                      ),

                    ],
                  ),
                  
                ),
                SizedBox(
                  height: w * 0.045,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}