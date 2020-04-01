import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';
import 'Parametres.dart';


//----------------- Traduction initial -----------------*/
	String assistance = 'Assistance';
	String cInfG = "Informations Générales";
	String cInfF = "Informations des Filières";
	String cRes = "Responsable de";
	String cAdr = "Adresse";
	String cTel = "Télephone";
	String cSit = "Site Web";
	String cMil = "É-mail";
	String cFax = "Fax";
	Color cBorN = Colors.black;
	Color ctitle = Colors.orange[900];
	Color bgInf = Colors.blue[200];


///########################################################### Classe Assistance #########################################################///
class Assistance extends StatefulWidget{
  	@override
  	_Assistance createState() {
      	return new _Assistance();
 	}
}

class _Assistance extends State<Assistance>{

  	Widget build(BuildContext context) {
    	return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                 		appBar: new AppBar(
                   			title: new Center( 
								child: new Text( 
									assistance,
							    	textDirection: TextDirection.ltr, 
									style: styTitle,
									textAlign: TextAlign.center,
				            	),
					    	),
							backgroundColor: bgAppbarColor,
                    	),
					
						body:BodyAssis(),

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
									Navigator.push(context, new MaterialPageRoute( builder: (context)=> new Login()));
								}
							}
						), 
    
				),
		)
			
		);
  }
}//fin classe




///########################################################### Classe BodyAssistance #########################################################///

class BodyAssis extends StatefulWidget{
  	@override
  	_BodyAssis createState() {
      	return new _BodyAssis();
 	}
}

class _BodyAssis extends State<BodyAssis>{

  	Widget build(BuildContext context) {
		var styNom = new TextStyle(
			color : cfloat,
			fontFamily: "Times New Roman",
			fontSize: 18,
			fontWeight: FontWeight.bold,
		);
		var styTit = new TextStyle(
			color : ctitle,
			fontFamily: "Times New Roman",
			fontSize: 16,
			fontWeight: FontWeight.bold,
		);
		var styVal = new TextStyle(
			fontFamily: "Times New Roman",
			fontSize: 14,
			color: cBorN,
		);
    	return new SingleChildScrollView(
			//padding: EdgeInsets.all(30),
			child:  new Column(
				children: <Widget>[
					new Card(
						elevation:2.0,
						child: new Container(
							color:bgInf,
							height: 25,
							child: new Center(
								child: Text(
									cInfG, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cAdr, 
									style: styTit
								),
							),
							subtitle: Text(
									"ESTE Km9, Route d'Agadir, Essaouira Aljadida BP. 383, Essaouira. Maroc", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cTel, 
									style: styTit
								),
							),
							subtitle: Text(
									"- (+212) 0524792776   \n- (+212) 0524792064 ", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									"Fax", 
									style: styTit
								),
							),
							subtitle: Text(
									"(+212)0524792648 \n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cMil, 
									style: styTit
								),
							),
							subtitle: Text(
									"este@uca.ma \n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cSit, 
									style: styTit
								),
							),
							subtitle: Text(
									"http://www.este.uca.ma/ \n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new Container(
							height: 25,
							color:bgInf,
							child: new Center(
								child: Text(
									cInfF, 
									textDirection:TextDirection.rtl,
									style: styNom
								),
							),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" GI (DUT) ", 
									style: styTit,
									textDirection:TextDirection.rtl,
								),
							),
							subtitle: Text(
									"- Mme KHALIL Karima\n- khalil_karima@yahoo.fr\n- (+212)0524792064", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" ER (DUT)", 
									style: styTit,
									textDirection:TextDirection.rtl,
								),
							),
							subtitle: Text(
									"- Mr KALOUN Soulymane\n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" TM (DUT)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr TOUNSI Mourad\n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" GODT (DUT)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr SAFA Laarbi\n", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" ISIL (LP)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr KARAMI Fahd\n- fahd.karami@gmail.com", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" ERDD (LP)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr ER-RAKI Mohammed\n- m.erraki@uca.ma\n- (+212)0677156570", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" MGE (LP)",
									textDirection:TextDirection.rtl, 
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr ELKALAY Khalid\n- elkalay_khalid@yaho.fr\n- (+212)0670099147", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" MBF (LP)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr ELKALAY Khalid\n- elkalay_khalid@yaho.fr\n- (+212)0670099147", 
									style: styVal
								),
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: new Center(
								child: Text(
									cRes+" MT (LP)", 
									textDirection:TextDirection.rtl,
									style: styTit
								),
							),
							subtitle: Text(
									"- Mr HADACH Mohamed\n- hadach@gmail.com", 
									style: styVal
								),
						),
					),
				],
				mainAxisAlignment: MainAxisAlignment.start,
			),
		);
  }
}//fin classe