import 'package:flutter/material.dart';
import 'package:miso/LoginPage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:miso/chat.dart';
import 'package:miso/convenience.dart';
import 'package:miso/welfare.dart';
import 'package:page_transition/page_transition.dart';
import 'notification.dart';
import 'hamberger.dart';
import 'Menu/appGuide.dart';
import 'communication.dart';
import 'Menu/learnSign.dart';

final imageList = [
  Image.asset('assets/icon/main1.png', fit: BoxFit.fill),
  Image.asset('assets/icon/main2.png', fit: BoxFit.fill),
  //Image.asset('assets/icon/main3.png', fit: BoxFit.fill),
];

class MisoHome extends StatefulWidget {
  const MisoHome({Key? key}) : super(key: key);

  //final user = FirebaseAuth.instance.currentUser;
  @override
  State<MisoHome> createState() => _MisoHomeState();
}

class _MisoHomeState extends State<MisoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        title: Text('MISO'),
        backgroundColor: Color(0xff54AA8B),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.leftToRight,
                  child: Hamberger(),
                ));
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
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,  //???????????? ??????
                      enlargeCenterPage: true,
                    ),
                  items: imageList.map((image) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            //color: Color(0xff54AA8B),
                            borderRadius: BorderRadius.circular(10), //???????????? ?????????
                            // border: Border.all(color: Colors.black, width: 1),
                          ),
                          //height: 700,
                          //width: 1000,
                          width: MediaQuery.of(context).size.width,
                          //padding: EdgeInsets.all(10),
                          //margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: image,
                          ),
                        );
                      },
                    );
                  }).toList(),
                  //item ????????? ?????? ??????
                ),

                //!!!!!! ????????????
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), //???????????? ?????????
                    border: Border.all(color: Colors.black12, width: 1),
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
                            "????????????",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(CommunicationApp());
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text("??? ?????? >"),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "???????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "?????? ???????????? ??????????????? ?????? ?????? ...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "???????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "?????? ?????? ????????? !!!",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "??????????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "????????? ?????? ???????????????????????? ?????? ...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //!!!!!! ?????? ??? ??????
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), //???????????? ?????????
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  height: 220,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "?????? ??? ??????",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 155,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(WelfareApp());
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text("??? ?????? >"),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "???????????????, ?????????????????? ??????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "??????????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "???????????????, ????????? ?????? ?????????... ",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "????????? ????????? ??????????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "??????&????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "?????? ??? ???????????? ?????? ?????? ...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "?????? ????????? ??????????????? ?????? ?????????...",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "??????&??????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "????????? ????????? ?????? ??? ?????? ?????? ???",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff5C5C5C),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //!!!!!! ??????????????????
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), //???????????? ?????????
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  height: 430,
                  //margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "??????????????????",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 145,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(ConvenienceApp());
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text("??? ?????? >"),
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "???????????????\n??????????????? ???????????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            strutStyle: StrutStyle(fontSize: 16.0),
                            text: TextSpan(
                                text: "???????????? ?????? ???????????? ???????????? ??????."
                                    " ?????????????????? ????????? ??????????????? ?????? ???????????? ????????? ??? ?????? ????????????."
                                    " ????????? ????????? ?????? ???????????? ???????????? ?????? ?????? ?????? ????????????.",
                                style: TextStyle(
                                    color: Colors.black,
                                    height: 1.4,
                                    fontSize: 16.0,
                                    fontFamily: 'NanumSquareRegular')),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "?????????\n????????? ?????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "?????????????????? 2?????? ????????? ?????????????????? ??????, ????????? ????????? ?????? ????????? ??????????????? ??????????????? ???????????? ?????? ;;",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "????????????\n????????? ?????????",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "??????????????? ?????? ! ???????????? ????????? ???????????? ?????? ?????????????????? !",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),

                //!!!!!! ???????????????
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), //???????????? ?????????
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  height: 920,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "???????????????",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(ConvenienceApp());
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.red,
                            ),
                            child: Text("??? ?????? >"),
                          ),
                        ],
                      ),

                      Image.asset(
                        'assets/icon/hope1.jpg', //width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "[????????????] ?????????????????? ?????? 45??? ?????? ?????????????????? ??????8??? ????????????",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "??????????????????????????? ??????????????? 27??? ??????8??? ????????? ???????????? ????????? ????????? ????????? ????????? ?????????. "
                                        "?????? ???????????? ??????????????? 30????????? ????????????. ????????? ??????????????? ???????????????, ??????????????? ????????????????????? ????????? ?????? ????????? ????????? ???????????? ?????? ?????? ?????????????????? ??????????????? 45?????? ????????????.",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        'assets/icon/hope2.jpg', //width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "73???, ??????????????? ?????? ???????????? ?????? ????????? ???????????? ???????????? ???????????? ????????? ???????????????",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
                        ],
                      ),

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                                strutStyle: StrutStyle(fontSize: 16.0),
                                text: TextSpan(
                                    text: "[?????????????????? ????????? ??????] 70?????? ?????? ?????? ????????? ?????????, ????????? ????????? ?????? ????????? ??????,"
                                        "?????? ????????? ?????? ???????????? ???????????? ??? ??? ?????? ?????? ????????????"
                                        "???????????? ?????? ?????? ???????????? ?????? ??????????????? ???????????? ??????????????????"
                                        "?????? ????????? ????????? ?????? ?????? ??????, ????????? ??? ?????? ???????????? ?????? ???????????? ??? ????????? ???????????? ?????? ?????????",
                                    style: TextStyle(
                                        color: Colors.black,
                                        height: 1.4,
                                        fontSize: 16.0,
                                        fontFamily: 'NanumSquareRegular')),
                              )),
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

      //bottom bar ??????
      // bottomNavigationBar: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Color(0xff54AA8B),
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white.withOpacity(.60),
      //     selectedFontSize: 14,
      //     unselectedFontSize: 14,
      //     onTap: (int index) {},
      //     items: [
      //       BottomNavigationBarItem(
      //         // title: Text('Favorites'),
      //           icon: Icon(Icons.home),
      //           label: 'Home'),
      //       BottomNavigationBarItem(
      //         // title: Text('Music'),
      //           icon: Icon(Icons.chat),
      //           label: 'Chat'),
      //     ],
      // child: Column(
      //   children: [
      //     Icon(
      //       Icons.image,
      //       size: 300,
      //     ),
      //   ],
      // )
      // ),

      bottomNavigationBar: BottomAppBar(
        color: Color(0xff54AA8B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 30,
            ),
            IconButton(
                onPressed: () {
                  Get.to(MisoHome());
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(Chat());
                },
                icon: Icon(
                  Icons.chat_outlined,
                  color: Colors.white,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(Login());
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                )),
            SizedBox(
              width: 30,
            )
          ],
        ),
      ),
    );
  }
}
