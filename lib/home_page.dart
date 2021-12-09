import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/Weather/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import 'package:velocity_x/src/flutter/gesture.dart';
import 'calculator.dart';
import 'dicee.dart';
import 'contact_me.dart';
import 'package:portfolio/Weather/weather.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';




class HomePage extends StatefulWidget {
  static const id ='home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title:  const Center(
              child: Text('My Portfolio'),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children:  <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(

                    color: Colors.lightGreen,
                  ),
                  child: Text(
                    'All IN ONE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(AntDesign.calculator),
                  title: Text('Calculator'),
                  onTap: (){
                    Navigator.pushNamed(context, Calculator.id);
                  },

                ),

                ListTile(
                  leading: Icon(Icons.add_call),
                  title: Text('Contact Me'),
                  onTap: (){
                    Navigator.pushNamed(context, ContactMe.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Dicee Game'),
                  onTap: (){
                    Navigator.pushNamed(context,Dicee.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text('Weather'),
                  onTap: (){
                    Navigator.pushNamed(context, MyApp.id);
                  },
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/me.JPG'),
                ),
                Text('Keshab Aryal',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30.0,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                Text(' Flutter Developer',

                  style: TextStyle(
                    fontFamily: 'SourceSansPro-Italic',

                    fontSize: 20.0,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 300.0,
                  child:Divider(
                    color: Colors.white,
                  ),

                ),
                FlatButton(
                    color: Colors.white,
                    onPressed: (){
                      launch('tel:+977 9814123080');
                    },


                    child: ListTile(
                      leading:Icon(
                        Icons.phone,
                        color: Colors.teal,

                      ),
                      title:Text(
                          '9814123080',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSansPro-Italic',

                          )

                      ),




                    )
                ),
                SizedBox(
                  height: 5.0,
                  width: 300.0,
                  child:Divider(
                    color: Colors.white,
                  ),

                ),
                FlatButton(


                  color: Colors.white,
                  onPressed: () { launch('https://mail.google.com/mail/u/0/#inbox'); },
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'keshabaryal03@gmail.com',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro-Italic',
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 60.0,
                  width: 300.0,
                  child:Divider(
                    color: Colors.white,
                  ),

                ),
                Text(' Contact Me',

                  style: TextStyle(


                    fontFamily: 'SourceSansPro-Italic',

                    fontSize: 20.0,
                    color: Colors.tealAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                new Center(child:Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 120.0),

                    child: Row(

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
                  )
                ),


                ),],




            ),

            )





        ),


    );


  }
}
