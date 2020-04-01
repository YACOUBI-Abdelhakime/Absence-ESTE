
import 'dart:convert';
import 'dart:io';
import 'package:device_info/device_info.dart';
import 'BodyHome.dart';
import 'Etudiant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Compte.dart';
import 'Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'Login.dart';
import 'Parametres.dart';

	
///=================================== Controller ===================================*/
  	TextEditingController user = new TextEditingController();
	TextEditingController passe = new TextEditingController();
	
///============================== dialogStyle ====================================*/
AlertStyle dialogStyle = new AlertStyle(
								animationType: AnimationType.fromTop,
								isCloseButton: false,//btn pour close le dialog.
								isOverlayTapDismiss: false,
								animationDuration: Duration(milliseconds: 400),
								alertBorder: RoundedRectangleBorder(
									borderRadius: BorderRadius.circular(20.0),
									side: BorderSide(
										color: Colors.red[900],
										width:1,
									),
								),
								titleStyle: TextStyle(
									color: Colors.red,
								),
    					);


///########################################################### Classe BodyLogin #########################################################///
class BodyLogin extends StatefulWidget{
   	@override
  	_Body createState() {
    	return new _Body(); 
  	}
}

class _Body extends State<BodyLogin>{
  	static final TextStyle styButton = new TextStyle(
		  									color: Colors.white,
											letterSpacing: 2, 
											fontSize: 20, 
											fontWeight: FontWeight.w600
										);

///=================================== Formulaire ===================================*/
    final TextField _Tfuser =  new TextField(
									controller: user,
        	                        autocorrect: true,
            	                    autofocus: false,
                	                maxLines: 1,
                    	            style: new TextStyle(
		  								color: clangueslbel, 
										fontSize: 20, 
										fontWeight: FontWeight.w400, 
										fontFamily: 'Montserrat'
									),
                                    cursorWidth: 2.0,
                        	        cursorColor: Colors.blueAccent[300],
                            	    toolbarOptions: ToolbarOptions(
										copy: true, 
										cut: false, 
										selectAll: true, 
										paste: false
									),
                                   	decoration: new InputDecoration(
										hintText: hintUser,
                                    	hintStyle: new TextStyle(
		  					   				color: chint, 
											fontWeight: FontWeight.bold, 
											fontSize: 20
										), // labelText: 'Identifiant', //labelStyle: stylabel,
                 	                  	border: OutlineInputBorder(
											borderRadius: BorderRadius.circular(32)
										),
                            	        prefixIcon: new Icon(
											Icons.account_circle, 
											size: 35, 
											color: cId_pass
										),
                            	        //icon: new Icon(Icons.account_circle, size: 35, color: Colors.indigo,),
                                    ),
                                );

    final TextField _Tfpass = new TextField(
									controller: passe,
    	                            autocorrect: true,
        	                        autofocus: false,
            	                    obscureText: false,
                	                maxLines: 1,
                	                cursorWidth: 2.0,
                    	            style: new TextStyle(
		  								color: clangueslbel, 
										fontSize: 20, 
										fontWeight: FontWeight.w400, 
										fontFamily: 'Montserrat'
									),
                        	        cursorColor: Colors.blueAccent[300],
                            	    toolbarOptions: ToolbarOptions(
										copy: false, 
										cut: false, 
										selectAll: true, 
										paste: false
									),
                	                decoration: new InputDecoration(
										hintText: hintPasse,
                    	            	hintStyle: new TextStyle(
		  					   				color: chint, 
											fontWeight: FontWeight.bold, 
											fontSize: 20
										),// labelText: 'Mot de passe',//labelStyle: stylabel,
                        	            border: OutlineInputBorder(
											borderRadius: BorderRadius.circular(32)
										),
                                    	prefixIcon: new Icon(
											Icons.lock_open, 
											size: 35, 
											color: cId_pass
										),
                        	            //icon: new Icon(Icons.lock, size: 35, color: Colors.indigo,),
                        	        ),
                            	);

 	final CircleAvatar _Logo = new CircleAvatar(
      								backgroundColor: Colors.transparent,
      								radius: 20,
      								child: Image.asset('images/1.png',),
    							);


///=================================== Fonction build =================================*/
	@override
	Widget build(BuildContext context) {
    	return( new SingleChildScrollView(
					padding: EdgeInsets.all(30),
      				child:  new Center(
        				child: new Column(
							children: <Widget>[
								new Padding(
									padding: EdgeInsets.all(20),
								),
								new Container(
									child: _Logo, 
									width: 150,
									height: 150,
								),
								new Padding(
									padding: EdgeInsets.all(20),
								),
								new Center(
									child : new Container(//_Tfuser
										child: _Tfuser,
										width: 350,
										height: 50,
									),
								),
								new Padding(
									padding: EdgeInsets.all(10),
								),
								new Center(
									child : new Container(//_Tfpass
										child: _Tfpass,
										width: 350,
										height: 50, 
									),	
								), 
								new Padding(
									padding: EdgeInsets.all(14),
								),
								new FutureBuilder(
									builder: (context, snapshot) {
										if (startMoving) {
											return (
												new Center(
													child: new Container(
														width: 40,
														height: 40,
														child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.indigo)),
													),
												)
											);
										} else {
											return (
												new Center(
													child : new Container( //btn
														width: 250,
														height: 50,
														decoration: new BoxDecoration(
															borderRadius: BorderRadius.circular(30.0),
															color: cbutton
														),
														child: new FlatButton(
															child : new Row( 
																children: <Widget>[
																	new Text(
																		titreButton,
																		textDirection: TextDirection.ltr,
																		style: styButton,
																	),
																	new Icon(
																		Icons.navigate_next,
																		size: 30,
																		color: Colors.white,
																	),
																],
																mainAxisAlignment: MainAxisAlignment.center,
															),
															onPressed: (){
																connectPresed(user.text,passe.text,context);
															},
														),
													),
												)
											);
										}
									},
								),
							],
          					mainAxisAlignment: MainAxisAlignment.center,
        				),
      				),
            	)
		);
    }
               
///=================================== Fonction Dialog =================================*/
	incorrectInfoDialog(context) {
		Alert(
			context: context,
			type: AlertType.error,
			title: infoIncorect,
			style : dialogStyle, 
			buttons: [
				DialogButton(
					child: new Text(
						okDialog,
						style: TextStyle(color: Colors.white, fontSize: 20),
					),
					onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
					color: cbutton,
				),
			],
		).show();
	}

	emptyInfoDialog(context) {
		Alert(
			context: context,
			type: AlertType.warning,
			title: donneeInfo,
			style : dialogStyle, 
			buttons: [
				DialogButton(
					child: Text(
						okDialog,
						style: TextStyle(color: Colors.white, fontSize: 20),
					),
					onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
					color: cbutton,
				),
			],
		).show();
	}

	static noConnectionDialog(context) {
		Alert(
			context: context,
			type: AlertType.info,
			title: noConn,
			style : dialogStyle, 
			buttons: [
				DialogButton(
					child: new Text(
						okDialog,
						style: TextStyle(color: Colors.white, fontSize: 20),
					),
					onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
					color: cbutton,
				),
			],
		).show();
	}

///=================================== Fonction Connecte to Home =================================*/						
	
	void connectPresed(String userid,String passid,context){
		if(userid.isEmpty  || passid.isEmpty){
			emptyInfoDialog(context);
			user.clear();
			passe.clear();
		}else{ 
			setState(() {
			  	startMoving = true;
			});
			setId(userid, passid);
		}
	}

///========================= Fonction setId =======================*/
	
	void setId(String user, String passe) async{
		DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
		if (Theme.of(context).platform == TargetPlatform.iOS){/*-----IOS-----*/ 
			IosDeviceInfo ios = await deviceInfo.iosInfo;
			setState((){ id_dev = ios.identifierForVendor.toString(); });
  		}else { /*-----Android-----*/ 
			AndroidDeviceInfo android = await deviceInfo.androidInfo;
			setState((){id_dev = android.androidId.toString();});
    	}
		httpLogin(user,passe,id_dev);
    }

///========================= Fonction httpLogin =======================*/

	httpLogin(String userid,String passid, String idDevice)async{
		var newurl =url+"user/"+userid+"/"+passid+"/"+idDevice;
		try{	
			Response res = await get(newurl,headers:{'Content-Type' : 'application/json'}); 
			if(res.statusCode == 200){
				var data = json.decode(res.body);

				if(data["rep"] == 'true'){
					setEtd(data);
					Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home()));
				}else{
					if (data["rep"] == 'id_x'){
						setState((){ 
							startMoving = false; 
						});
						user.clear();
						passe.clear();
						BodyHomestate.showDialog(context,pas_egale,AlertType.warning);
				    }else{
						setState((){ 
							startMoving = false; 
						});
						user.clear();
						passe.clear();
						incorrectInfoDialog(context); 
					}
				}
			}else{
				BodyHomestate.showDialog(context,err_server,AlertType.error);
			}
		}on SocketException catch(ex){
			setState((){ 
				startMoving = false; 
			}); 
			noConnectionDialog(context);
			user.clear();
			passe.clear();
		}
	}

///========================= Fonction setEtd =======================*/
	void setEtd(var data){
		setState(() {
			etd = Etudiant(
				data["info"][0]["nom"],
				data["info"][0]["prenom"],
				data["info"][0]["numApg"],
				data["info"][0]["Date_naissance"],
				data["info"][0]["filiere"],
				data["info"][0]["id_device"]
			);
				startMoving = false;
		});
	}
}// fin classe


