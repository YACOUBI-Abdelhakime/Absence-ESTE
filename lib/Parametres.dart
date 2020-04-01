import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pjabs/Themes.dart';
import 'Assistance.dart';
import 'DrawerPage.dart';
import 'Faq.dart';
import 'Guid.dart';
import 'Home.dart';
import 'Login.dart';
import 'Langues.dart';
import 'Compte.dart';
import 'BodyLogin.dart';
import 'ParamNoConnect.dart';




//---------- variable d'activer mode nuit ------------//
  	bool activer = false;

//-------- Traduction initial + mode nuit variable -----------------*/
	String langue = "Langues";
    String mode = "Mode nuit";
	double dL = 39;
    double dP = 30;
    String tooltiphome = "aller à la page d'accueil";
	Color clangueslbel = Colors.black87;
	Color cparametterIcon = Colors.black45;
	Color cfloat = Colors.indigo;
	
///=================================== Style global ===================================*/
  	TextStyle styTPara = new TextStyle(
                			color: Colors.white, 
							fontWeight: FontWeight.w600, 
							letterSpacing: 1
						);	
						
///########################################################### Classe Parametres #########################################################///
class Parametres extends StatefulWidget{
  @override
  _parametres createState() {
      return new _parametres();
  }
}

class _parametres extends State<Parametres>{
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		setState(() {
			home.chome = Colors.white60;
			home.guidicon = Colors.white60;
			home.idicon = Colors.white60;
			home.param = Colors.white;
			//GuidBodyState.controller.pause();
		});
   		return( new MaterialApp(
			   		theme: themes,
			   		home:  new Scaffold(
						appBar: new AppBar(
							title: new Center(
								child: new Text(
									drowerParametre,
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
										Navigator.pop(context);
										Navigator.push( context,new MaterialPageRoute(builder: (context)=> new Login()));
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

						drawer: new DrawerPage(), 

						body: new BodyParametres(),

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
											//Navigator.pop(context);
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
											color: home.param ,
										), 
										onPressed: (){
											//Vous ete dans Parametres()
										}
									),

									new IconButton(
										icon: new Icon(
											Icons.perm_identity,
											size: 25,
											color: home.idicon,
										), 
										onPressed: (){
											//Navigator.pop(context);
											Navigator.push( context, new MaterialPageRoute(builder: (context)=>new Compte()));
						
										}
									),
								],
							),
						),
					),
					title: "ESTE Absence",
				)
     	);
  	}
}//fin classe


///########################################################### Classe BodyParametres #########################################################///

class BodyParametres extends StatefulWidget{
  	@override
  	_bodyParametres createState() {
    	return new _bodyParametres();
  }
}

class _bodyParametres extends State<BodyParametres>{
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
     	return( new ListView(
			 		children: <Widget>[
                		new ListTile(
							title: new Text(
								langue, 
								textDirection: TextDirection.ltr, 
								style: new TextStyle(
		  							color: clangueslbel, 
									fontSize: 17, 
									fontWeight: FontWeight.w600 , 
									fontFamily: 'Montserrat'
								),
							),
                            leading: new Icon(
								Icons.public, 
								size: 25, 
								color: cparametterIcon,
							),
                            trailing: new Icon(
								Icons.arrow_right, 
								size: 30,
								color: cparametterIcon,
							),
                            onTap: (){
								//Navigator.pop(context);
                              	Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Langues()));
                            },
                		),

                		new Divider(
							height: 4.0, 
							indent: 2.0,
						),

                		new ListTile(
							title: new Text(
								mode, 
								textDirection: TextDirection.ltr, 
								style: new TextStyle(
		  							color: clangueslbel, 
									fontSize: 17, 
									fontWeight: FontWeight.w600 , 
									fontFamily: 'Montserrat'
								),
							),
                            leading: new Icon(
								Icons.color_lens,
								size: 25, 
								color: cparametterIcon,
							),
                            trailing: new Switch(
								value: activer, 
								activeColor: Colors.white,
								activeTrackColor: Colors.green,
								onChanged: (_){
									themes(activer);
									if(connect){
										//Navigator.pop(context);
                        				Navigator.push(context,new MaterialPageRoute(builder: (context)=> new Parametres()));
									}else{
										//Navigator.pop(context);
                        				Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
									}
								},
							),
                		),
                		new Divider(
							height: 4.0, 
							indent: 2.0,
						),
     				],
				)
    	);	
  	}

///=================================== Fonction Themes =================================*/ 	
    void  themes(bool value){
		if(activer == false){
        	setState(() {
        		ThemesBody().ChangeThemes("dark");
	    	});
		}else{
        	if(activer == true){
        		setState(() {
        			ThemesBody().ChangeThemes("light");
        		});
    		}
  		}
	}
}//fin de classe