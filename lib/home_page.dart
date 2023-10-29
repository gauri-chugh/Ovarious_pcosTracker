import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ques_3.dart';
//import 'image_select.dart';

class home_page extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  const home_page({super.key , required this.text1 , required this.text2 , required this.text3 , required this.text4 , required this.text5 , required this.text6});

  @override
  State<home_page> createState() => _home_pageState(
    text1: text1,
    text2: text2,
    text3: text3,
    text4: text4,
    text5: text5,
    text6: text6,
  );
}

class _home_pageState extends State<home_page> {

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  _home_pageState({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6
  });

  @override
  Widget build(BuildContext context) {
    String s = "HIGH CHANCES OF PCOS";
    List<String> l1 = [];
    int c=0;
    l1.addAll([text1 , text2 , text3 , text4 , text5 , text6]);
    for(int i=0 ; i<l1.length ; i++){
      if(l1[i] == "yes")
        c++;
    }
    if(c >= 3)
      s = "LOW CHANCES OF PCOS";

    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                  alignment: Alignment.topLeft,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 37,
                    color: Colors.black54,
                    icon: const Icon(Icons.settings),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 34,
                    color: Colors.black54,
                    icon: const Icon(Icons.calendar_today_outlined),
                  ),
                  IconButton(
                    alignment: Alignment.centerRight,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    iconSize: 37,
                    color: Colors.black54,
                    icon: const Icon(Icons.notifications_none),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 275,
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text('MON', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('TUE', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('WED', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('THU', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('FRI', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('SAT', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('SUN', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                      ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' 23', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text(' 24', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text(' 25', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text(' 26', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text(' 27', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text(' 28', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                          Text('29 ', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black45, fontSize: 14, fontWeight: FontWeight.w400)),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 320,
                //color: Colors.pink[50],
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [Colors.white,Color(DE7CA1)],
                  // ),
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 230,
                      height: 230,
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(250),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text('Period in', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),),
                          const SizedBox(
                            height: 15,
                          ),
                          Text('12 days', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900)),),
                          const SizedBox(
                            height: 15,
                          ),
                          Text('Low fertility', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),),
                          const SizedBox(
                            height: 20,
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints.tightFor(height: 40, width: 120),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pink[400],
                                  elevation: 5,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  )
                              ),
                              child: const Text(
                                'Log Period',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(height: 50, width: 230),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink[400],
                            elevation: 5,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )
                        ),
                        child: Text(
                          "$s",
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,


                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '      Daily PCOS Insights',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,
                      )
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(' Log Your\n Symptoms',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold))),
                          const SizedBox(height: 10,),
                          IconButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.add_circle_outline_rounded),
                          ),
                      ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,

                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Log Your\nActivities',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),),
                          const SizedBox(height: 10,),
                          IconButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.add_circle_outline_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,

                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Progress\n Report',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),),
                          const SizedBox(height: 10,),
                          IconButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.add_circle_outline_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,

                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Book\nAppointment',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),),
                          const SizedBox(height: 10,),
                          IconButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.add_circle_outline_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,

                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Health Coach Report',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),),
                          const SizedBox(height: 10,),
                          IconButton(
                            alignment: Alignment.topLeft,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 30,
                            icon: const Icon(Icons.add_circle_outline_rounded),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                ],
          ),
      ),
      const SizedBox(
          height: 30,
      ),

      const SizedBox(
        child: Divider(
          color: Colors.grey,
        )
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
           IconButton(
             alignment: Alignment.topLeft,
             onPressed: (){},
             iconSize: 40,
             color: Colors.black54,
             icon: Icon(Icons.home_outlined),
           ),
           IconButton(
             alignment: Alignment.topLeft,
             onPressed: (){
               //Navigator.push(context, MaterialPageRoute(builder: (context) =>  Image_Select()));
             },
             iconSize: 40,
             color: Colors.black54,
             icon: Icon(Icons.article_outlined),
           ),
           IconButton(
             alignment: Alignment.topLeft,
             onPressed: (){},
             iconSize: 40,
             color: Colors.black54,
             icon: Icon(Icons.favorite_border),
           ),
           IconButton(
             alignment: Alignment.topLeft,
             onPressed: (){},
             iconSize: 40,
             color: Colors.black54,
             icon: Icon(Icons.person_outline_outlined),
           ),
       ],
      ) ,
    ],
    ),
        ),),
    );
  }
}
