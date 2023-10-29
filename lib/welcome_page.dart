import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ques_1.dart';

class Welcome_page extends StatefulWidget {
  const Welcome_page({Key? key}) : super(key: key);

  @override
  State<Welcome_page> createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> {
  @override
  Widget build(BuildContext context) {
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
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Text(
                    "OVARIOUS",
                  style: GoogleFonts.buenard(fontSize: 60, color: Colors.brown)
                ),
                Image.asset(
                  'images/pcos logo.png',
                  width: 223,
                  height: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                    "Welcome!",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                      "Please answer a few questions and\nwe will personalise OVARIOUS for you",
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(height: 50, width: 170),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Ques_1()));
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
                      'Continue',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,

                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
