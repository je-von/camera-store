import 'package:flutter/material.dart';
import 'package:jevon_qualif/main.dart';
import 'package:jevon_qualif/models/camera.dart';
import 'package:jevon_qualif/models/review.dart';
import 'package:jevon_qualif/models/user.dart';

var currentUser = null;

AppState? currState = null;

bool isDarkTheme = false;

ThemeData darkTheme = ThemeData(
  fontFamily: 'Montserrat',
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.amber,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: Colors.amber),
  ),
);

ThemeData lightTheme = ThemeData(
  fontFamily: 'Montserrat',
  accentColor: Colors.orange,
  brightness: Brightness.light,
  primaryColor: Colors.orange.shade200,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(primary: Colors.orange.shade900),
  ),
);

var carouselImages = [
  'assets/carousel1.webp',
  'assets/carousel2.webp',
  'assets/carousel3.webp',
  'assets/carousel4.webp',
  'assets/carousel5.webp',
  'assets/carousel6.webp',
];

var users = [
  User('jevon levin', 'jevon@mail.com', 'jevon123'),
  User('user user', 'user@mail.com', 'user1234'),
  User('abcdef', 'abc@gmail.com', 'abcde123'),
  User('helloworld', 'hello@gmail.com', 'hello123')
];

var reviews = [
  Review(users[0], cameras[0],
      'Kamera bagus, harga terjangkau. Terima kasih CameraStore!! mantap'),
  Review(users[3], cameras[0],
      'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aut, fuga cupiditate laboriosam, temporibus, laborum alias non tempore sequi quibusdam atque beatae? Minus illum quae quasi ipsum doloribus nisi tempora quisquam?'),
  Review(users[1], cameras[0],
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti laborum repellendus aliquam iure consequuntur illum, perspiciatis veritatis tempore, quidem reiciendis, porro maxime hic. Ab quia nam odit quasi. Accusantium, amet.'),
  Review(users[2], cameras[0],
      'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sunt dignissimos quasi eveniet perspiciatis vero cum deserunt iure, eos assumenda eaque a possimus repellendus eius magnam. Non architecto quia aperiam reiciendis.'),
  Review(users[0], cameras[1],
      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis aperiam quam error iste ipsam, facilis porro expedita, id labore sit, ut dicta praesentium atque cupiditate illo corrupti. In, unde ipsam?')
];

var cameras = [
  Camera(
    'Nikon D6 Body',
    'Nikon DSLR Full Frame Camera Nikon D6 with Warranty: 1 Year Official PT Alta Nikindo',
    101399000,
    'camera1.webp',
  ),
  Camera(
    'Nikon D610 Body',
    'Nikon DSLR Full Frame Camera Nikon D610 with Warranty: 1 Year Official PT Alta Nikindo \n Discount Rp.8.031.000 Promo Nikon Rp 1.500.000 Free :...',
    19530000,
    'camera2.jpg',
  ),
  Camera(
    'Nikon D750 Body',
    'Nikon DSLR Full Frame Camera Nikon D750 with Warranty: 1 Year Official PT Alta Nikindo \n Promo Nikon Rp 5.500.000 Free : Nikon Bag L',
    23999000,
    'camera3.jpg',
  ),
  Camera(
    'Nikon D750 kit AF-S 24-120mm f/4G ED VR',
    'Nikon DSLR Full Frame Camera Nikon D750 with Warranty: 1 Year Official PT Alta Nikindo \n Promo Nikon Rp 6.000.000 Free : Nikon Bag L',
    30999000,
    'camera4.jpg',
  ),
  Camera(
    'Nikon D780 Body',
    'Nikon DSLR Full Frame Camera Nikon D780 with Warranty: 1 Year Official PT Alta Nikindo \n Discount Rp 3.000.000 Free: Nikon Bag L',
    31999000,
    'camera5.webp',
  ),
  Camera(
    'Nikon D780 Kit AF-S 24-120mm f/4G ED VR',
    'Nikon DSLR Full Frame Camera Nikon D780 with Warranty: 1 Year Official PT Alta Nikindo \n Discount Rp 3.000.000 Free: Nikon Bag L',
    44999000,
    'camera6.webp',
  ),
  Camera(
    'Nikon D850 Body',
    'Nikon DSLR Full Frame Camera Nikon D850 with Warranty: 1 Year Official PT Alta Nikindo \n Discount Rp 7.000.000 Free: Nikon Bag L',
    46999000,
    'camera7.jpg',
  ),
  Camera(
    'Nikon D850 kit AF-S 24-120mm f/4G ED VR',
    'Nikon DSLR Full Frame Camera Nikon D850 with Warranty: 1 Year Official PT Alta Nikindo \n Discount Rp 7.000.000 Free: Nikon Bag L',
    49999000,
    'camera7.jpg',
  ),
];
