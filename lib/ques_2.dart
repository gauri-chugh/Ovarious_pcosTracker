import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ques_3.dart';

class ques_2 extends StatefulWidget {
  const ques_2({super.key});

  @override
  State<ques_2> createState() => _ques_2State();
}

class _ques_2State extends State<ques_2> {
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
                          'When did your last period start?',
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
                        height: 240,
                      ),
                      Container(
                          width: 250,
                          child: TextField(
                            controller: inputText,
                            decoration: InputDecoration(
                              hintText: 'last period date',
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
                        height: 175,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(height: 50, width: 170),
                        child: ElevatedButton(
                          onPressed: () {
                            String date = inputText.text.toString();
                            print('input : $date');
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Ques_3()));
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
