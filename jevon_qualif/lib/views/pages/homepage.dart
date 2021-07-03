import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jevon_qualif/utils/globals.dart' as globals;
import 'package:jevon_qualif/main.dart';
import 'package:jevon_qualif/views/components/navigation.dart';
import 'package:jevon_qualif/views/pages/loginpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Navigation nav = Navigation(context, isHomePage: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: nav.getAppBarActions(),
      ),
      drawer: nav.getDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
            child: Text(
              'Welcome to CameraStore!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide()),
            ),
          ),
          Text(
            'Events & Promotions',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          CarouselSlider(
            items: globals.carouselImages
                .map((c) => Image(
                      image: AssetImage(c),
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlay: true,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 2)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 40),
            decoration: BoxDecoration(
              border: Border(top: BorderSide()),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: Image.asset('assets/logo.png'),
                      ),
                    ),
                    Text(
                      'About Us',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    )
                  ],
                ),
                Text(
                  'CameraStore is the Number 1 Indonesian based camera seller which provides the best camera and photography tools.\nLorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores distinctio eveniet laborum! Nihil rerum perferendis dolorem. Perferendis a nesciunt possimus molestiae earum id, autem quae soluta porro sunt nam at. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Praesentium voluptas maxime vitae, distinctio quidem cum architecto optio quisquam deserunt facilis nam necessitatibus placeat iure animi. Sint rem inventore excepturi quisquam. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Libero dicta debitis quae quam ducimus quidem error, cupiditate natus, quis corporis ratione suscipit eius pariatur tempore laboriosam nulla totam, earum culpa!',
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: Text(
              '©2021  Jevon Levin - LC035',
              style: TextStyle(fontStyle: FontStyle.italic),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
