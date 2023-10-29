import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ques_4.dart';

class Ques_3 extends StatefulWidget {
  const Ques_3({super.key});

  @override
  State<Ques_3> createState() => _Ques_3State();
}

class _Ques_3State extends State<Ques_3> {
  @override
  Widget build(BuildContext context) {
    var inputText1 = TextEditingController();
    var inputText2 = TextEditingController();
    var inputText3 = TextEditingController();
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white,Colors.pinkAccent],
          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                IconButton(
                  alignment: Alignment.center,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 20,
                  icon: const Icon(Icons.arrow_back),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                          'Did you experience irregular period?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 250,
                          child: TextField(
                            controller: inputText1,
                            decoration: InputDecoration(
                              hintText: 'Yes/No',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),

                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Did you experience weight gain?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 250,
                          child: TextField(
                            controller: inputText2,
                            decoration: InputDecoration(
                              hintText: 'Yes/No',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),

                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Did you notice hyperpigmentation?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 250,
                          child: TextField(
                            controller: inputText3,
                            decoration: InputDecoration(
                              hintText: 'Yes/No',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                              ),

                            ),
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(height: 50, width: 170),
                        child: ElevatedButton(
                          onPressed: () {
                            String text1 = inputText1.text.toString();
                            String text2 = inputText2.text.toString();
                            String text3 = inputText3.text.toString();
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  Ques_4(text1: text1,text2: text2,text3: text3)));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 25,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
