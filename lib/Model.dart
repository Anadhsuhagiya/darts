import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class Model
{
  static double twidth=0;
  static double theight=0;
  static double appbarheight=0;
  static double statusbarheight=0;
  static double navbarheight=0;
  static double a_height=0;

  getDimens(BuildContext context)
  {
      twidth = MediaQuery.of(context).size.width;
      theight = MediaQuery.of(context).size.height;

      appbarheight = kToolbarHeight;

      statusbarheight = MediaQuery.of(context).padding.top;
      navbarheight = MediaQuery.of(context).padding.bottom;

      a_height = theight - appbarheight - statusbarheight - navbarheight;
  }

  static SharedPreferences? prefs;


}