import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ContactMe extends StatefulWidget {
  static const id = 'contact_me';

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Contact Me',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: new FooterView(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Center(
              child: new Text(
                '      Hello, I\'am Keshab Aryal. I  am from Syangja. I am studying BSC.CSIT in Prithivi Narayan Campus. ',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SocialAccounts(),
        ],

        footer: Footer(
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('   Made by Keshab with  ❤')),
        ),
        flex: 1, //default flex is 2
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            AntDesign.linkedin_square,
            color: Colors.white,
          ).mdClick(() {
            launch("https://www.linkedin.com/in/keshab-aryal-a2aa651a0/");
          }).make(),
          20.widthBox,
          Icon(
            AntDesign.instagram,
            color: Colors.white,
          ).mdClick(() {
            launch("https://www.instagram.com/keshab.aryal/");
          }).make(),
          20.widthBox,
          Icon(
            AntDesign.youtube,
            color: Colors.white,
          ).mdClick(() {
            launch("https://www.youtube.com/channel/UCW4H4C8WikZUl2L3GcthIBw");
          }).make(),
          20.widthBox,
          Icon(
            AntDesign.facebook_square,
            color: Colors.white,
          ).mdClick(() {
            launch("https://www.facebook.com/keshab.aryal.98/");
          }).make()
        ],
      ),
    );
  }
}
