import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Compte.dart';
import 'Home.dart';
import 'Login.dart';
import 'Parametres.dart';


//----------------- Traduction initial -----------------*/
	String fq = 'Questions fréquemment posées';
	String q1 = "Application de gestion d'absence";
	String r1 = "Il s'agit d'une application qui utilise le QR Code pour géré les absences sans utilisé l'ancienne méthode. nous allons donc gagnié le temps"; 
	String q2 = "Le changement de téléphone";
	String r2 = "Si vous changez de téléphone, vous devez rencontrer votre professeur pour changer l'adresse mac de votre appareil dans le système";
	String q3 = "votre compte";
	String r3 = "Tout le monde a un compte grâce aux informations de l'administration";
	String q4 = "Sécurité & Accès";
	String r4 = "Nom d'utilisateur : numéro d'apogée \n MOTE DE PASSE : date de naissance";
	String rn = "Observation";
	String remarque = "chaqu'un il faut utiliser leur vrai téléphone dans la premier foit ";
	Color bg = Colors.blue[200];
	Color creponce = Colors.black;

///########################################################### Classe Assistance #########################################################///
class Faq extends StatefulWidget{
  	@override
  	_Faq createState() {
      	return new _Faq();
 	}
}

class _Faq extends State<Faq>{

  	Widget build(BuildContext context) {
    	return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                 		appBar: new AppBar(
                   			title: new Center( 
								child: new Text( 
									fq,
							    	textDirection: TextDirection.ltr, 
									style: styTitle,
									textAlign: TextAlign.center,
				            	),
					    	),
							backgroundColor: bgAppbarColor,
                    	),
					
						body:BodyFaq(),

						floatingActionButton: new FloatingActionButton( 
							tooltip: tooltiphome,
							backgroundColor: cfloat,
							child: new Icon(
								Icons.home,								
								size:30,
								color: Colors.white,
							),
							onPressed: () {  
								if (connect){
									//Navigator.pop(context);
									Navigator.push(context, new MaterialPageRoute( builder: (context)=> new Home()));
								}else{
									//Navigator.pop(context);
									Navigator.push(context,new MaterialPageRoute( builder: (context)=> new Login()));
								}
							}
						), 
    
				),
		)
			
		);
  }
}//fin classe



///########################################################### Classe BodyFaq #########################################################///

class BodyFaq extends StatefulWidget{
  	@override
  	_BodyFaq createState() {
      	return new _BodyFaq();
 	}
}

class _BodyFaq extends State<BodyFaq>{

	@override
  	Widget build(BuildContext context) {
		var styNom = new TextStyle(
			color : cfloat,
			fontFamily: "Times New Roman",
			fontSize: 18,
			fontWeight: FontWeight.bold,
		);
		var styTit = new TextStyle(
			color : creponce,
			fontFamily: "Times New Roman",
			fontSize: 15,
			fontWeight: FontWeight.normal,
		);

    	return new SingleChildScrollView(
			child:  new Column(
				children: <Widget>[
					new Padding(padding: EdgeInsets.all(10)),
            /*---------------- Q1 ----------------------*/
					new Card(
						elevation: 2.0,
						color : Colors.blue[200],
						child: new Container(
							color:bg,
							height: 25,
							child: new Center(
								child: Text(
									q1, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),		
					),
					new Padding(padding: EdgeInsets.all(6)),
					new Card(
							child: new Container(
								height: 80,
								child: new Center(
									child: Text(
										r1, 
										textDirection:TextDirection.rtl,
										style: styTit,
										textAlign: TextAlign.center,
									),
								),
							),		
					),

					new Padding(padding: EdgeInsets.all(8)),
					// new Divider(height: 2.0, indent: 1.0,),

			/*---------------- Q2 ----------------------*/
					new Card(
						elevation: 2.0,
						color : Colors.blue[200],
						child: new Container(
							color:bg,
							height: 25,
							child: new Center(
								child: Text(
									q2, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),		
					),
					new Padding(padding: EdgeInsets.all(6)),
					new Card(
							child: new Container(
								height: 80,
								child: new Center(
									child: Text(
										r2, 
										textDirection:TextDirection.rtl,
										style: styTit,
										textAlign: TextAlign.center,
									),
								),
							),		
					),

					new Padding(padding: EdgeInsets.all(8)),
					// new Divider(height: 2.0, indent: 1.0,),

			/*---------------- Q3 ----------------------*/
					new Card(
						elevation: 2.0,
						color : Colors.blue[200],
						child: new Container(
							color:bg,
							height: 25,
							child: new Center(
								child: Text(
									q3, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),		
					),
					new Padding(padding: EdgeInsets.all(6)),
					new Card(
							child: new Container(
								height: 80,
								child: new Center(
									child: Text(
										r3, 
										textDirection:TextDirection.rtl,
										style: styTit,
										textAlign: TextAlign.center,
									),
								),
							),		
					),

					new Padding(padding: EdgeInsets.all(8)),
					// new Divider(height: 2.0, indent: 1.0,),

					/*---------------- Q4 ----------------------*/
						new Card(
						elevation: 2.0,
						color : Colors.blue[200],
						child: new Container(
							color:bg,
							height: 25,
							child: new Center(
								child: Text(
									q4, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),		
					),
					new Padding(padding: EdgeInsets.all(6)),
					new Card(
							child: new Container(
								height: 80,
								child: new Center(
									child: Text(
										r4, 
										textDirection:TextDirection.rtl,
										style: styTit,
										textAlign: TextAlign.center,
									),
								),
							),		
					),

					/*---------------- remarque ----------------------*/
						new Card(
						elevation: 2.0,
						color : Colors.blue[200],
						child: new Container(
							color:bg,
							height: 25,
							child: new Center(
								child: Text(
									rn, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),		
					),
					new Padding(padding: EdgeInsets.all(6)),
					new Card(
							child: new Container(
								height: 80,
								child: new Center(
									child: Text(
										remarque, 
										textDirection:TextDirection.rtl,
										style: styTit,
										textAlign: TextAlign.center,
									),
								),
							),		
					),
					new Padding(padding: EdgeInsets.all(12)),
				],
				mainAxisAlignment: MainAxisAlignment.start,
			),
		);
  }
}//fin classe