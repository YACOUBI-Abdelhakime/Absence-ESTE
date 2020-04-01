import 'dart:async';
import 'package:flutter/material.dart';
import 'navig.dart';


///########################################################### Classe FirstPage #########################################################///

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
///=================================== constructeur =================================*/
  	@override
  	void initState() {
    	super.initState();
    	Timer(Duration(seconds: 3), () => MyNavigator.goToIntro(context));
  	}

///=================================== Logo Apps =================================*/
  final CircleAvatar _Logo = new CircleAvatar(
      								backgroundColor: Colors.transparent,
      								radius: 65,
      								child: Image.asset('images/logo.png',),
    						);

///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				fit: StackFit.expand,
				children: <Widget>[
					Container(
						decoration: BoxDecoration(color: Colors.indigo),
					),
					Column(
						mainAxisAlignment: MainAxisAlignment.start,
						children: <Widget>[
							Expanded(
								flex: 9,
								child: Container(
									child: Column(
										mainAxisAlignment: MainAxisAlignment.spaceAround,
										children: <Widget>[
											_Logo,
											new Column(
												mainAxisAlignment: MainAxisAlignment.center,
												children: <Widget>[
													CircularProgressIndicator(),
													Padding(
														padding: EdgeInsets.only(top: 20.0),
													),
													Text(
														"Bienvenu",
														softWrap: true,
														textAlign: TextAlign.center,
														style: TextStyle(
															fontWeight: FontWeight.bold,
															fontSize: 18.0,
															color: Colors.white
														),
													)
												],
											),
										],
									),
								),
							),
						],
					)
				],
			),
		);
	}
}
