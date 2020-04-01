import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'BodyLogin.dart';
import 'Compte.dart';
import 'DrawerPage.dart';
import 'Home.dart';
import 'Login.dart';
import 'Parametres.dart';


//----------------- Traduction initial -----------------*/	
	String guidlabel = 'Guidances';


///########################################################### Classe Guid #########################################################///

class Guid extends StatefulWidget{
  @override
  GuidState createState() => new GuidState();

}

class GuidState extends State<Guid>{
  	@override
  	Widget build(BuildContext context) {
		setState(() {
			home.chome = Colors.white60;
			home.guidicon = Colors.white;
			home.idicon = Colors.white60;
			home.param = Colors.white60;
		});
     	return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                       	appBar: new AppBar(
							title: new Center(
								child: new Text(
									guidlabel,
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
										Navigator.push(
											context, 
											new MaterialPageRoute(builder: (context)=> new Login())
										);
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

                        body: GuidBody(),

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
											//Vous ete dans Guid()

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
											//Navigator.pop(context);
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


///########################################################### Classe GuidBody #########################################################///
class GuidBody extends StatefulWidget {
  	@override
  	GuidBodyState createState() => GuidBodyState();
}
 

class GuidBodyState extends State<GuidBody> {
  	static VideoPlayerController controller;

  	@override
  	void initState() {
    	controller = VideoPlayerController.asset("videos/guid.mp4");
    	controller.initialize();
    	controller.setLooping(true);
    	controller.setVolume(0.0);
		controller.pause();
    	super.initState();
  	}
 
  	@override
  	void dispose() {
    	controller.dispose();
    	super.dispose();
  	}
 
  	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			body: new InkWell(
					child: VideoPlayer(controller) ,
					onTap:(){
						setState(() {
							if (controller.value.isPlaying) {
								controller.pause();
							} else {
								controller.play();
							}
						});
					}
				),
		);
  	}
}