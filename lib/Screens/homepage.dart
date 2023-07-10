import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Home Page'.toUpperCase()),
        backgroundColor: Colors.yellow[500],
        titleTextStyle: TextStyle(
            color: Colors.red[300],
            fontWeight: FontWeight.bold,
            fontSize: 25.0),
      ),
      body: Container(
          // color: Colors.deepPurpleAccent, when using decoration box cant use color out side
          width: 300.0,
          height: 200.0,
          padding: const EdgeInsets.only(top: 10.0),
          margin: const EdgeInsets.all(20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            // borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.greenAccent, width: 8.0),
            shape: BoxShape.circle,
            image: const DecorationImage(
                image: AssetImage(
                    'images/peter-broomfield-m3m-lnR90uM-unsplash.jpg')),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7.0,
                spreadRadius: 5.0,
                offset: Offset(4, 4),
              )
            ],
          )

          // child: Text(
          //   'Secure Assert',
          //   style: TextStyle(
          //       color: Colors.deepPurple,
          //       fontWeight: FontWeight.w900,
          //       fontSize: 30.0),
          // ),
          ),
    );
  }
}
