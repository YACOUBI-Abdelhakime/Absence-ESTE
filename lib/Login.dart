import 'BodyLogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DrawerPage.dart';
import 'ParamNoConnect.dart';



	bool connect = false; 
//----------------- Traduction initial + mode nuit variable -----------------*/
    String titrePrincipal = "Authentification";
    String hintUser = "Identifiant";
    String hintPasse = "AAAA-MM-JJ";
    String titreButton = "Se connecter";
    String infoIncorect = "Les informations incorrectes";
    String donneeInfo = "Saisir les données nécessaires";
    String noConn = "Vérifier votre connection";
	String okDialog = "OK";
	String err_server = "Erreur dans le serveur";
	ThemeData themes = ThemeData.light();
	Color bgAppbarColor = Colors.indigo;
	Color bgloginColor1 = Colors.blue[300];
	Color bgloginColor2 =  Colors.blue[200];
	Color bgloginColor3 = Colors.blue[100];
	Color bgloginColor4 = Colors.blue[100];
	Color bgloginColor5 = Colors.blue[200];
	Color bgloginColor6 = Colors.blue[300];
	Color cdrowerlabel = Colors.blueAccent;
	Color cdrowericon = Colors.brown ;
	Color chint = Colors.black45;
	Color cId_pass = Colors.indigo[400];
	Color cbutton = Colors.indigo;
	String url = "http://vps730710.ovh.net:8008/";
	bool startMoving = false;
	String id_dev;//device id de mobile
	

//----------------- style Static -----------------*/
	final TextStyle styTitle = new TextStyle(
									color: Colors.white,
									letterSpacing: 1, 
									fontWeight: FontWeight.bold,
                  					fontFamily: "Times New Roman",
								);

///########################################################### Classe Login ###########################################################///
class Login extends StatefulWidget{
 	 @override
  	Log createState() => new Log();
}


class Log extends State<Login>{

///=========================================== Fonction build ============================================*/
    @override
  	Widget build(BuildContext context) {
		setState(() {
		  connect = false;
		});
    	return( new MaterialApp(
					theme: themes,
					home: new Scaffold( 
						// key: SnackKey,//key qui on a déja declaré.
						appBar: new AppBar( 
							title: new Center( 
								child: new Text(titrePrincipal, style: styTitle,),
							),

							actions: <Widget>[
								new IconButton( 
									icon: new Icon(
										Icons.settings,
										color: Colors.white,
									),
									onPressed:(){
										//Navigator.pop(context);
										Navigator.push( context, new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
									}
								),
							],

							backgroundColor: bgAppbarColor,
						),

						body: new Container(
							child: new BodyLogin(),
							height: 1000,
					
							decoration: new BoxDecoration(
								gradient: new LinearGradient(
									colors: [ 
										bgloginColor1,
										bgloginColor2,
										bgloginColor3,
										bgloginColor4,
										bgloginColor5,
										bgloginColor6,
									]
								)
							),	
						),

						drawer: new DrawerPage(),
					),
					title: "ESTE Absence",
				)
		);
  }
}//fin classe
