import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class Ques_4 extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  const Ques_4({super.key , required this.text1 , required this.text2 , required this.text3});

  @override
  State<Ques_4> createState() => _Ques_4State(
    text1: text1,
    text2: text2,
    text3: text3,
  );
}

class _Ques_4State extends State<Ques_4> {

  final String text1;
  final String text2;
  final String text3;

  _Ques_4State({
    required this.text1,
    required this.text2,
    required this.text3,
  });

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
                          'Did you notice excess facial hair growth?',
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
                        height: 40,
                      ),
                      Text(
                          'Did you experience hairloss?',
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
                        height: 40,
                      ),
                      Text(
                          'Did you notice increased acne?',
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
                        height: 70,
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(height: 50, width: 170),
                        child: ElevatedButton(
                          onPressed: () {
                            String text11 = inputText1.text.toString();
                            String text22 = inputText2.text.toString();
                            String text33 = inputText3.text.toString();
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  home_page(text1: text1,text2: text2,text3: text3,text4: text11,text5: text22,text6: text33,)));
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
