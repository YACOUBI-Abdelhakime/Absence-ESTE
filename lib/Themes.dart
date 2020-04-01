
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Assistance.dart';
import 'Faq.dart';
import 'Home.dart';
import 'Langues.dart';
import 'Login.dart';
import 'Parametres.dart';


///########################################################### Classe Themes #########################################################///
class Themes extends StatefulWidget {

  	@override
  	ThemesBody createState() => ThemesBody();
}

class ThemesBody extends State<Themes> {
  	@override
  	Widget build(BuildContext context) {
    	return null;
  	}

	void ChangeThemes(var theme){
		if(theme == "dark"){
            activer = true;	
			bgAppbarColor = Colors.grey[600];
			bgloginColor1 = Colors.grey[850];
			bgloginColor2 =  Colors.grey[800];
			bgloginColor3 = Colors.grey[700];
			bgloginColor4 = Colors.grey[700];
			bgloginColor5 = Colors.grey[800];
			bgloginColor6 = Colors.grey[850];
			cbutton = Colors.grey[600];
			cbottombar = Colors.grey[600];
			cdrowerlabel = Colors.white;
			cdrowericon = Colors.white70;
			cfloat = Colors.blue[300];
			cId_pass = Colors.white60;
			chint = Colors.white54;
			clangueslbel = Colors.white;
			cparametterIcon = Colors.white;
			themes = ThemeData.dark();
			langues.valid1 = Colors.white;
			langues.valid2 = Colors.transparent;
			langues.valid3 = Colors.transparent;
			cBorN = Colors.white;
			bgInf = Colors.black; 
        	bg = Colors.black;  
        	creponce = Colors.white;
       		cl = Colors.grey[600];
		}else{
			activer = false;
			bgAppbarColor = Colors.indigo;
			bgloginColor1 = Colors.blue[300];
			bgloginColor2 =  Colors.blue[200];
			bgloginColor3 = Colors.blue[100];
			bgloginColor4 = Colors.blue[100];
			bgloginColor5 = Colors.blue[200];
			bgloginColor6 = Colors.blue[300];
			cbutton = Colors.indigo;
			cbottombar = Colors.indigo[400];
			cdrowerlabel = Colors.blueAccent;
			cdrowericon = Colors.brown ;
			cfloat = Colors.indigo;
			chint = Colors.black45;
			cId_pass = Colors.indigo[400];
			clangueslbel = Colors.black87;
			cparametterIcon = Colors.black45;
			themes = ThemeData.light();
			langues.valid1 = Colors.indigo ;
			langues.valid2 = Colors.transparent ;
			langues.valid3 = Colors.transparent ;
			cBorN = Colors.black;
			bgInf = Colors.blue[200]; 
        	bg = Colors.blue[200]; 
        	creponce = Colors.black;
        	cl = Colors.indigo;	
		}
		 
	 } 

}// fin class
