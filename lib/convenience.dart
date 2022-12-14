import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';
import 'hamberger.dart';
import 'notification.dart';
import 'package:miso/LoginPage.dart';
import 'package:miso/chat.dart';
import 'package:miso/home.dart';

class ConvenienceApp extends StatefulWidget {
  const ConvenienceApp({Key? key}) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  State<ConvenienceApp> createState() => _ConvenienceAppState();
}

class _ConvenienceAppState extends State<ConvenienceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        title: Text('MISO'),
        backgroundColor: Color(0xff54AA8B),
        centerTitle: true,
        leading:
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: Hamberger(),
                )
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              Get.to(Notice());
            },
          ),
        ],
      ),

      body: Container(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "편의시설정보",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐⭐⭐⭐⭐\n한동대학교 코너스톤홀",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐⭐⭐\n모캄보 법원점",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), //모서리를 둥글게
                    border: Border.all(color: Colors.black12, width: 2),
                  ),
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "⭐⭐⭐⭐\n다이소 양덕점",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),

      //bottom bar 구현
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff54AA8B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30,),
            IconButton(
                onPressed: (){
                  Get.to(MisoHome());
                },
                icon: Icon(Icons.home,
                  color: Colors.white,)
            ),

            Spacer(),

            IconButton(
                onPressed: (){
                  Get.to(Chat());
                },
                icon: Icon(Icons.chat_outlined,
                  color: Colors.white,)
            ),

            Spacer(),

            IconButton(
                onPressed: (){
                  Get.to(Login());
                },
                icon: Icon(Icons.account_circle_outlined,
                  color: Colors.white,)
            ),
            SizedBox(width: 30,)
          ],
        ),
      ),
    );
  }
}
