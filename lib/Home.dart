import 'package:pjabs/BodyHome.dart';
import 'Login.dart';
import 'Parametres.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Compte.dart';
import 'DrawerPage.dart';
import 'BodyLogin.dart';
import 'Guid.dart';


//----------------- Global variables-----------------*/
	Color cbottombar = Colors.indigo[400];
	String denie_camera = "L'autorisation de caméra requise, réessayez.";
	String back_befor_scane = "Vous avez sortie avant de scanner le QR code.";
	String present_ok= "L'opération terminée avec succès.";
	String present_no = 'Vous avez une erreur.\nréessayer';
	String noFil ="vous n'êtes pas de cette classe";
  	String idMess = "veuillez Scanner QR Code avec l'utilisation de votre vrai appareil.";
  	String pas_egale =  "utilisez votre vrai téléphone ou réinitialiser votre compte(Rencontrez votre professeur).";
  	String scane_autre_qr ="Vous avez scanné un QR code incorrect";
	bool scanner=false;
	
	


///########################################################### Classe Home #########################################################///

class Home extends StatefulWidget{
  	@override
  	home createState() {
        return new home();
  	}
}


class home extends State<Home>{
/*----------------- static variables -----------------*/ 	
	static Color guidicon = Colors.white60;
	static Color idicon = Colors.white60;
	static Color param = Colors.white60;
	static Color chome = Colors.white;

///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		setState(() {
		  	connect = true;
			home.chome = Colors.white;
			home.guidicon = Colors.white60;
			home.idicon = Colors.white60;
			home.param = Colors.white60;
		});
		
        return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                       	appBar: new AppBar(
							title: new Center(
								child: new Text(
									accueillabel,
									textDirection: TextDirection.ltr,
									style: styTitle,
								),
							),
							actions: <Widget>[
								new IconButton(
									icon: new Icon(
										Icons.power_settings_new,
										size: 30,
									),
									onPressed: (){
										user.clear();
										passe.clear();
										connect = false;
										etd = null;
                    					Navigator.pop(context);
										Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Login()));
										
									},
									
								),
								new Padding(
									padding: EdgeInsets.all(1.0),
								),
							],
                            backgroundColor: bgAppbarColor,
						),

                        // on va le modifier par la suite(BODY).
						body: DecoratedBox(
							position: DecorationPosition.background,
							decoration: BoxDecoration(
								color: Colors.white,
								image: DecorationImage(
									image: activer ? AssetImage('images/bgN.jpg') : AssetImage('images/bgL.png'),
									fit: BoxFit.cover
									),
							),
							child: new Container(
								child:  BodyHome(),
								height: 1000,
							),
						),

						floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
						floatingActionButton: new FloatingActionButton(
							child: new Icon(
								Icons.camera_alt,
								size: 25,
								color: Colors.white,
							),
							backgroundColor: cfloat,
							onPressed: (){
								scanner = true;
								//Navigator.pop(context);
								Navigator.push( context, new MaterialPageRoute(builder: (BuildContext context)=>new Home()));
							},
						),
						
						bottomNavigationBar: new BottomAppBar(
							notchMargin: 3,
							color: cbottombar,
							shape: const CircularNotchedRectangle(),
							elevation: 5.0,
							child: new Row(
								mainAxisAlignment: MainAxisAlignment.spaceAround,
								children: <Widget>[
									new IconButton(
										icon: new Icon(
											Icons.home,
											size: 25,
											color: chome,
										), 
										onPressed: (){
											//Vous ete dans Home()
										}
									),

									new IconButton(
										icon: new Icon(
											Icons.help_outline,
											size: 25,
											color: guidicon,
										), 
										onPressed: () {
											//Navigator.pop(context);
											Navigator.push( context, new MaterialPageRoute(builder: (context)=>new Guid()));	
										}
									),
									new Padding(padding: EdgeInsets.all(8)),
									new IconButton(
										icon: new Icon(
											Icons.settings,
											size: 25,
											color: param,
										), 
										onPressed: (){
											//Navigator.pop(context);
											Navigator.push( context, new MaterialPageRoute(builder: (context)=>new Parametres()));	
										}
									),

									new IconButton(
										icon: new Icon(
											Icons.perm_identity,
											size: 25,
											color: idicon,
										), 
										onPressed: (){
											//Navigator.pop(context);
											Navigator.push( context, new MaterialPageRoute(builder: (context)=>new Compte()));
										}
									),
								],
							),
						),
						drawer: new DrawerPage(),     
        			)
				)
		);
  	}

}