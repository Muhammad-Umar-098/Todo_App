import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskapp/Home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 81, 133, 252),
        toolbarHeight: 10,
      ),
      body: Column(
        children: [
          const Center(
            child: Column(
              children: [
                Text(
                  'Manage you',
                  style: TextStyle(fontSize: 35),
                ),
                Text(
                  'Daily TO DO',
                  style: TextStyle(fontSize: 35),
                )
              ],
            ),
          ),
          Center(
            child: Image.asset(
              '../assets/images/pic1.png',
              height: 300,
              width: 350,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 10,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 223, 134),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 10,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 233, 158),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Column(
            children: [
              Text(
                'Without much worry just manage',
                style: TextStyle(fontSize: 18),
              ),
              Text('things as easy as piece of cake',
                  style: TextStyle(fontSize: 18))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 30,
            width: 150,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 253, 228, 6),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text('Create a Note'),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 81, 133, 252),
    );
  }
}
