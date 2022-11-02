// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constants.dart';
import 'home_page.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    final double coverHeight = 280;
    final double profilHeight = 144;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: profilHeight / 1.7),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/dojo.png",
                    width: double.infinity,
                    height: coverHeight,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: coverHeight - profilHeight / 2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: profilHeight / 2,
                  child: Image.asset(
                    "assets/mohand.png",
                  ),
                ),
              ),
            ],
          ),
          Text(
            'SARI Mohand',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 34,
              color: primaryTextColor,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Stagiaire Dév Mobile IPPON',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 19,
              color: secondaryTextColor,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'White Belt',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 19,
              color: contentTextColor,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'ABOUT',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 19,
                color: Colors.black54,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              'ahgahhageagdbvcdhbcodziufcbrfhbuieor ezbhfoiuzehfboiuze fdozefboiyzebhf ezhbfoizebfozebfoizebize foezbfouiahgahhageagdbvcdhbcodziufcbrfhbuieor ezbhfoiuzehfboiuze fdozefboiyzebhf ezhbfoizebfozebfoizebize foezbfouiahgahhageagdbvcdhbcodziufcbrfhbuieor ezbhfoiuzehfboiuze fdozefboiyzebhf ezhbfoizebfozebfoizebize foezbfouiahgahhageagdbvcdhbcodziufcbrfhbuieor ezbhfoiuzehfboiuze fdozefboiyzebhf ezhbfoizebfozebfoizebize foezbfouiahgahhageagdbvcdhbcodziufcbrfhbuieor ezbhfoiuzehfboiuze fdozefboiyzebhf ezhbfoizebfozebfoizebize foezbfouizebfoiezbfoze zehfboizebfoizef fzobfozfbizoe hobfzeoifbozebfoabfero',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 19,
                color: Colors.black54,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Image.asset('assets/Judo_white_belt.png'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/search_icon.png'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/profile_icon.png'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
