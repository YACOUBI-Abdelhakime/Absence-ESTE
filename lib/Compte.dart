import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BodyLogin.dart';
import 'DrawerPage.dart';
import 'Guid.dart';
import 'Home.dart';
import 'Login.dart';
import 'Parametres.dart';
import 'Etudiant.dart';


//----------------- Traduction initial -----------------*/	
	String comptelabel = 'Profil'; 
	String cNumApg = "Num Apogee";
	String cDateNes = "Date Naissance";
	String cFiliere = "Filière";
	String cId_dev = "id Tel";
	Etudiant etd = Etudiant("!.n.!","!.p.!","!.a.!","!.d.!","!.f.!","!.i.!"); 


///########################################################### Classe Compte #########################################################///
class Compte extends StatefulWidget{
  @override
  CompteState createState() => new CompteState();

}

class CompteState extends State<Compte>{
  	@override
  	Widget build(BuildContext context) {
		setState(() {
			home.chome = Colors.white60;
			home.guidicon = Colors.white60;
			home.idicon = Colors.white;
			home.param = Colors.white60;
		});
     	return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                       	appBar: new AppBar(
							title: new Center(
								child: new Text(
									comptelabel,
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
										//Navigator.pop(context);
										Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Login()));
										user.clear();
										passe.clear();
										connect = false;
									},
									
								),
								new Padding(
									padding: EdgeInsets.all(1.0),
								),
							],
                            backgroundColor: bgAppbarColor,
						),
						//////// BODY
						body: BodyCompte(),
					

						floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
						floatingActionButton: new FloatingActionButton(
							child: new Icon(
								Icons.camera_alt,
								size: 25,
								color: Colors.white ,
							),
							backgroundColor: cfloat,
							onPressed: () {
								scanner = true;
                				//Navigator.pop(context);
								Navigator.push( context, new MaterialPageRoute(builder: (BuildContext context)=>new Home()));
							} 
						),
						
						bottomNavigationBar: new BottomAppBar(
							notchMargin: 3,
							color: cbottombar,
							shape: const CircularNotchedRectangle(),
							child: new Row(
								mainAxisAlignment: MainAxisAlignment.spaceAround,
								children: <Widget>[
									new IconButton(
										icon: new Icon(
											Icons.home,
											size: 25,
											color: home.chome,
										), 
										onPressed: (){
											Navigator.push( context, new MaterialPageRoute(builder: (BuildContext context)=>new Home()));
										}
									),
									new IconButton(
										icon: new Icon(
											Icons.help_outline,
											size: 25,
											color: home.guidicon,
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
											color:home.param ,
										), 
										onPressed: (){
											Navigator.push( context, new MaterialPageRoute(builder: (context)=>new Parametres()));
										}
									),

									new IconButton(
										icon: new Icon(
											Icons.perm_identity,
											size: 25,
											color: home.idicon,
										), 
										onPressed: (){
											//Vous ete dans Compte()
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



///########################################################### Classe BodyCompte #########################################################///
class BodyCompte extends StatefulWidget{
  @override
  BodyCompteState createState() => new BodyCompteState();
}

class BodyCompteState extends State<BodyCompte>{
	
	var styNom = new TextStyle(
					color : cfloat,
					fontFamily: "Times New Roman",
					fontSize: 18,
					fontWeight: FontWeight.bold,
				);
        
	var styVal = new TextStyle(
					fontFamily: "Times New Roman",
					fontSize: 18,
					fontWeight: FontWeight.bold,
				);
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		  String nomEtd = etd.nom+"\n"+etd.prenom;
		  String numEtd = " : "+etd.numApg;
		  String dateNesEtd = " : "+etd.dateNes;
		  String filEtd = " : "+etd.filiere;
		  String idDevEtd = " : "+id_dev;
		  
     	return( new  SingleChildScrollView(
			child:  new Column(
				children: <Widget>[
					new Card(
						elevation:2.0,
						child: new Row(
							children: <Widget>[
								new Container(
									margin: EdgeInsets.all(6),
									alignment: Alignment.center,
									child: new Icon(Icons.account_circle,size:85,color:cfloat),
								),
								new Padding(
									padding: EdgeInsets.all(6),
								),
								new Container(
									child: new Text(
										nomEtd, 
										style: styNom,
									),
								),
							],
						) 
						
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: Row(
								children: <Widget>[
									new Text(
										cNumApg, 
										style: styNom
									),
									new Text(
										numEtd, 
										style: styVal,
									),
								],
							), 
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: Row(
								children: <Widget>[
									new Text(
										cDateNes, 
										style: styNom
									),
									new Text(
										dateNesEtd, 
										style: styVal
									),
								],
							), 
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: Row(
								children: <Widget>[
									new Text(
										cFiliere, 
										style: styNom
									),
									new Text(
										filEtd, 
										style: styVal
									),
								],
							), 
						),
					),
					new Card(
						elevation:2.0,
						child: new ListTile(
							title: Row(
								children: <Widget>[
									new Text(
										cId_dev, 
										style: styNom
									),
									new Text(
										idDevEtd, 
										style: styVal
									),
								],
							), 
						),
					),
				],
				mainAxisAlignment: MainAxisAlignment.start,
			),
		)
		);
  	}
}//fin classe