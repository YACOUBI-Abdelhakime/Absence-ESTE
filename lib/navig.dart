import 'package:flutter/material.dart';

import 'Login.dart';

class MyNavigator {
    static void goToIntro(BuildContext context) {
    	Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Login()));
  	}
}
