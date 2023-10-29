import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ques_2.dart';


class Ques_1 extends StatefulWidget {
  const Ques_1({Key? key}) : super(key: key);

  @override
  State<Ques_1> createState() => _Ques_1State();
}

class _Ques_1State extends State<Ques_1> {
  @override
  Widget build(BuildContext context) {
    var inputText = TextEditingController();
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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "What year were you born?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Text(
                            "PCOS predictions will be more accurate if OVARIOUS knows your age",
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Container(
                          width: 250,
                          child: TextField(
                            controller: inputText,
                            decoration: InputDecoration(
                              hintText: 'Year of Birth',
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
                        height: 180,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(height: 50, width: 170),
                        child: ElevatedButton(
                          onPressed: () {
                            String year = inputText.text.toString();
                            print('input : $year');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ques_2()));
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
