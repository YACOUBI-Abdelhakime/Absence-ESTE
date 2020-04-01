import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DrawerPage.dart';
import 'Login.dart';
import 'Parametres.dart';


	
///########################################################### Classe Parametres #########################################################///
class ParamNoConnect extends StatefulWidget{
  @override
  _paramNoState createState() {
      return new _paramNoState();
  }
}

class _paramNoState extends State<ParamNoConnect>{
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
   		return( new MaterialApp(
			   		theme: themes,
			   		home:  new Scaffold(
                		appBar: new AppBar(
							title: new Center( 
								child: new Text( 
									drowerParametre,
							        textDirection: TextDirection.ltr, 
									style: styTPara,
									textAlign: TextAlign.center,
					            ),
					        ),
							backgroundColor: bgAppbarColor,
						),

						body: new BodyParametres(),

                      	floatingActionButton: new FloatingActionButton( 
							tooltip: tooltiphome,
					        child: new Icon(
								Icons.home,								
								size:30,
								color: Colors.white,
							),
							backgroundColor: cfloat,
							onPressed: (){ 
								//Navigator.pop(context);
							    Navigator.push(context, new MaterialPageRoute( builder: (context)=> new Login()));	
							}
                        ),

						floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
						
					),
				)
     	);
  	}
}//fin classe