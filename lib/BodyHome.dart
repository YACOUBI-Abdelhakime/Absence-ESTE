import 'dart:convert';
import 'dart:io';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/services.dart';
import 'BodyLogin.dart';
import 'Compte.dart';
import 'Home.dart';
import 'Login.dart';


String res = "";
///########################################################### Classe BodyHome #########################################################///

class BodyHome extends StatefulWidget{
   	@override
  	BodyHomestate createState()=> new BodyHomestate();
}


class BodyHomestate extends State<BodyHome>{
///========================= Fonction Scane =======================*/

	void scan() async {
		try{
			res = await BarcodeScanner.scan();
			var data = json.decode(res);
			var date = data["date_sc"];
			var filiere = data["filiere"];
			var id_sc  = data["id_sc"];

			if(filiere == etd.filiere){
				var urlAbs = url+"present/"+date+"/"+filiere+"/"+id_sc+"/"+etd.numApg;
				print("url :"+urlAbs);
				checkAbsence(urlAbs,context);
			}else{
				showDialog(context, noFil ,AlertType.error);
			} 
		}on PlatformException catch(ex){
			if(ex.code== BarcodeScanner.CameraAccessDenied){
				showDialog(context, denie_camera ,AlertType.error);
			}else{
				showDialog(context, "$ex" ,AlertType.error);
			}
		}on FormatException {
			if(res.isNotEmpty){
				showDialog(context, scane_autre_qr  ,AlertType.warning);
			}else{
				showDialog(context, back_befor_scane ,AlertType.warning);
			}
		}catch(ex){
			showDialog(context, "$ex" ,AlertType.error);
		}
	}
	///=================================== Fonction checkAbsence =================================*/
	
	checkAbsence(urlAbs,context)async{ 
		Response result;
		try{
			result = await get(urlAbs,headers:{'Content-Type' : 'application/json'});
			if(result.statusCode == 200) {
				var data = json.decode(result.body);
				if(data["rep"]=="present"){
					showDialog(context, present_ok ,AlertType.success);
				}else{
					showDialog(context, present_no ,AlertType.warning);
				}
			}else{
				BodyHomestate.showDialog(context,err_server,AlertType.error);
			}
		}on SocketException catch(_){
			showDialog(context, noConn ,AlertType.info);
		}
	}
	

///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		if(scanner){
			scan();
			scanner = false;
		}
    	return( 
			Container()
		);
	}	

///=================================== Fonction Dialog =================================*/
	static showDialog(context, String text,AlertType dType,) {
		Alert(
			context: context,
			type: dType,
			title: text,
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

}