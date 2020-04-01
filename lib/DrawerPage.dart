
import 'Faq.dart';
import 'Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Assistance.dart';
import 'Login.dart';


//----------------- Traduction initial -----------------*/
	String accueillabel = "Accueil";
    String drowerParametre = "Paramètres";
    String drowerAssistance = "Assistance";
    String faq = "FAQ";
    String drowerExit = "Fermer";

///########################################################### Classe DrawerLogin #########################################################///
class DrawerPage extends StatefulWidget{
    @override
	_drawer createState() {
    	return new _drawer();
  	}
}


class _drawer extends State<DrawerPage>{
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
    	return( new Drawer(
					child: new ListView(
						children: <Widget>[
							// header(logo ESTE) :
                			new DrawerHeader(
								child: new Container(
									width: 30,
									child: new Image.asset('images/Image1.png'),
								)
							),

		                    // page Accueil :
         		            new  ListTile(
								title: new Text(
									accueillabel, 
									textDirection: TextDirection.ltr, 
									style: new TextStyle(
	  									color: cdrowerlabel, 
										fontWeight: FontWeight.w300, 
										fontSize: 20
									)
								),
                        			leading: new Icon(
									Icons.home, 
									size: 25, 
									color: cdrowericon,
								),
                        		onTap: (){
									if(!connect){
										Navigator.pop(context); 
		                		    	Navigator.push(context,new MaterialPageRoute(builder: (context)=>new Login()));
									}
									else if(connect){
											Navigator.pop(context); 
		                		    		Navigator.push(context,new MaterialPageRoute(builder: (context)=>new Home()));
									}
                    			}
                    		),

                   		    new Divider(
								height: 2.0, 
								indent: 1.0,
							),
		                    // page Assistance :
        		            new ListTile(
								title: new Text(
									drowerAssistance, 
									textDirection: TextDirection.ltr, 
									style: new TextStyle(
	  									color: cdrowerlabel, 
										fontWeight: FontWeight.w300, 
										fontSize: 20
									)
								),
                        		leading: new Icon(
									Icons.phone, 
									size: 25, 
									color: cdrowericon
								),
                    			onTap: (){
									Navigator.pop(context);
									Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Assistance()));
								},
							),
                                
							new Divider(
								height: 2.0, 
								indent: 1.0,
							),
                    
							// page FAQ :
		                    new ListTile(
								title: new Text(
									faq, 
									textDirection: TextDirection.ltr, 
									style: new TextStyle(
	  									color: cdrowerlabel, 
										fontWeight: FontWeight.w300, 
										fontSize: 20
									)
								),
        		                leading: new Icon(
									Icons.forum, 
									size: 25, 
									color: cdrowericon
								),
                		        onTap: (){
									Navigator.pop(context);
									Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Faq()));
								},
							),

							new Divider(
								height: 2.0, 
								indent: 1.0,
							),
		                    // Exit Drawer
        		            new ListTile(
								title: new Text(
									drowerExit, 
									textDirection: TextDirection.ltr, 
									style: new TextStyle(
	  									color: cdrowerlabel, 
										fontWeight: FontWeight.w300, 
										fontSize: 20
									)
								),
                        		leading: new Icon(
									Icons.exit_to_app, 
									size: 25, 
									color: cdrowericon
								),
                    			onTap: (){
									Navigator.pop(context);
								},
							),
							new Divider(
								height: 2.0, 
								indent: 1.0,
							),
							
                		],
         		   	)
        		)
        );
    }

}//fin de classe



