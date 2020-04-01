import 'Faq.dart';
import 'Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Assistance.dart';
import 'Compte.dart';
import 'DrawerPage.dart';
import 'Guid.dart';
import 'Login.dart';
import 'ParamNoConnect.dart';
import 'Parametres.dart';


Color cl = Colors.indigo;
///########################################################### Classe Langues #########################################################///
class Langues extends StatefulWidget{
	@override
    langues createState() {
    	return new langues();
  	}
}


class langues extends State<Langues>{
	 static String lan = 'f';
//----------------- mode nuit variable -----------------*/
	static Color valid1 = Colors.indigo;
	static Color valid2 = Colors.transparent;
	static Color valid3 = Colors.transparent;
	
//------------des variables de type Icon --------------//
    static Color colorVF ;
    static Color colorVE ;
    static Color colorVA ;

///=================================== Style ===================================*/
  	// static TextStyle sty =  new TextStyle(
	// 	  							color: clangueslbel, 
	// 								fontSize: 17, 
	// 								fontWeight: FontWeight.w600 , 
	// 								fontFamily: 'Montserrat'
	// 							);
								
///=================================== Fonction build =================================*/
  	@override
  	Widget build(BuildContext context) {
		if(lan == 'f'){
			colorVF = valid1;
			colorVA = valid2;
			colorVE = valid3;
		}
		else if(lan == 'a'){
				colorVA = valid1;
				colorVE = valid2;
				colorVF = valid3;
		}
		else{
			colorVE = valid1;
			colorVA = valid2;
			colorVF = valid3;
		}
		  
    	return( new MaterialApp(
					theme: themes,
					home: new Scaffold(
                 		appBar: new AppBar(
							title: new Row(
								children: <Widget>[ 
									new Padding(
										padding: EdgeInsets.all(dL),
									),

                                    new Padding(
										padding: EdgeInsets.all(3),
									),
                                    
									new Center(
										child:  Text(
											langue,
											textDirection: TextDirection.ltr, 
											style: styTPara,
											textAlign: TextAlign.center,
										),
									),
                                ],
                            ),
							actions: <Widget>[
								new Icon(Icons.arrow_right, color: cl,)
							],

                            leading: new InkWell(
								child: new Icon(
									Icons.arrow_back,
									color: Colors.white,
								), 
								onTap: (){
									if (connect){
										//Navigator.pop(context);
										Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Parametres()));
									}else{
										//Navigator.pop(context);
										Navigator.push(context, new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
									}
								}
							),

                            backgroundColor: bgAppbarColor,
                        ),

                     	// backgroundColor: Colors.white,
 
 		                body:new ListView(
							children: <Widget>[
                 				new ListTile(
									title: new Row(
										children: <Widget>[ 
											new Padding(
												padding: EdgeInsets.all(6),
											),
                                            new Text(
												'Francais', 
												textDirection: TextDirection.ltr, 
												style: new TextStyle(
		  											color: clangueslbel, 
													fontSize: 17, 
													fontWeight: FontWeight.w600 , 
													fontFamily: 'Montserrat'
												),
											),
                                        ],
                                    ),
                            		trailing: new Icon(
										Icons.check, 
										size: 25, 
										color: colorVF,
									),
                            		onTap: (){//------Francais--------//
                              			converte("Francais");
										if(connect){
											//Navigator.pop(context);
											Navigator.push(context,new MaterialPageRoute(builder: (context)=> new Parametres()));
										}else{
											//Navigator.pop(context);
											Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
										}	
                            		},
                				),

                				new Divider(
									height: 4.0, 
									indent: 2.0,
								),

                				new ListTile(
									title:new Row(
										children: <Widget>[ 
											new Padding(
												padding: EdgeInsets.all(6),
											),
                                            new Text(
												'العربية', 
												textDirection: TextDirection.ltr, 
												style: new TextStyle(
		  											color: clangueslbel, 
													fontSize: 17, 
													fontWeight: FontWeight.w600 , 
													fontFamily: 'Montserrat'
												),
											),
                                        ],
                                    ), 
                             		trailing: new Icon(
										Icons.check, 
										size: 25, 
										color: colorVA,
									),
                            		onTap: (){//------Arabe--------//
                              				converte("العربية");
											if(connect){
												//Navigator.pop(context);
												Navigator.push(context,new MaterialPageRoute(builder: (context)=> new Parametres()));
											}else{
												//Navigator.pop(context);
												Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
											} 
                            		},
                				),

                				new Divider(
									height: 4.0, 
									indent: 2.0,
								),

                				new ListTile(
									title: new Row(
										children: <Widget>[ 
											new Padding(
												padding: EdgeInsets.all(6), 
											),

                                            new Text(
												'English', 
												textDirection: TextDirection.ltr,
												style: new TextStyle(
		  											color: clangueslbel, 
													fontSize: 17, 
													fontWeight: FontWeight.w600 , 
													fontFamily: 'Montserrat'
												),
											),
                                        ],
                                    ), 
                            		trailing: new Icon(
										Icons.check, 
										size: 25, 
										color: colorVE,
									),
                            		onTap: (){//------English--------//
                              			converte("English");
										if(connect){
											//Navigator.pop(context);
											Navigator.push(context,new MaterialPageRoute(builder: (context)=> new Parametres()));
										}else{
											//Navigator.pop(context);
											Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ParamNoConnect()));
										} 
                            		},
                				),
								new Divider(
									height: 4.0, 
									indent: 2.0,
								),
     						],
						),
    				)
				)
    	);
  	}

///=================================== Fonction Convert langue =================================*/
	void converte(String value){
        if(value == 'Francais'){
			
            setState(() {/*pour le Francais*/
				lan = 'f';
               	colorVA = valid3;
                colorVE = valid2;
                colorVF = valid1;
                dL = 39;
                dP = 30;
                titrePrincipal = "Authentification";
                hintUser = "Identifiant";
                hintPasse = "AAAA-MM-JJ";
                titreButton = "Se connecter";
                accueillabel = "Accueil";
                drowerParametre = "Paramètres";
                drowerAssistance = "Assistance";
                faq = "FAQ";
				drowerExit = "Fermer";
                langue = 'Langues';
                mode = 'Mode nuit';
				tooltiphome = "aller à la page d'accueil";
         		infoIncorect = "Les informations incorrectes";
                donneeInfo = "Saisir les données nécessaires";
				noConn = "Vérifier votre connection";
				okDialog = "OK";
				assistance = "Assistance";
				guidlabel = 'Guidances';
				comptelabel = 'Profil';
				denie_camera = "L'autorisation de caméra requise, réessayez.";
				back_befor_scane = "Vous avez sortie avant de scanner le QR code.";
				scane_autre_qr ="Vous avez scanné un qr code incorrect";//-------
				present_ok="L'opération terminée avec succès.";
        		present_no = 'Vous avez un erreur, réessayer';
				cNumApg = "Num Apogee";
				cDateNes = "Date Naissance";
				cFiliere = "Filière";
				cId_dev = "id Tel";
				cInfG = "Informations Générales";
			 	cInfF = "Informations des Filières";
			 	cRes = "Responsable de";
			 	cAdr = "Adresse";
			 	cTel = "Télephone";
			 	cSit = "Site Web";
			 	cMil = "É-mail";
				cFax = "Fax";
				noFil ="vous n'êtes pas de cette classe";
				fq = 'Questions fréquemment posées';
				q1 = "Application de gestion d'absence";
				r1 = "Il s'agit d'une application qui utilise le QR Code pour géré les absences sans utilisé l'ancienne méthode. nous allons donc gagnié le temps"; 
				q2 = "Le changement de téléphone";
				r2 = "Si vous changez de téléphone, vous devez rencontrer votre professeur pour changer l'adresse mac de votre appareil dans le système";
				q3 = "votre compte";
				r3 = "Tout le monde a un compte grâce aux informations de l'administration";
				q4 = "Sécurité & Accès";
				r4 = "NON D'UTILISATEUR : numéro d'apogée \n MOTE DE PASSE : date de naissance";
				rn = "Observation";
				remarque = "chaqu'un il faut utiliser leur vrai téléphone dans la premier foit ";
				err_server = "Erreur dans le serveur";
            });
        }else if(value == "العربية"){
				
			setState(() {/*pour l'Arabe*/
				lan = 'a';
				colorVA =  valid1;
				colorVE =  valid3;
				colorVF =  valid2;
				dL = 52;
				dP = 38;
				titrePrincipal = "صفحة التسجيل";
				hintUser = "اسم المستخدم";
				hintPasse = "اليوم-الشهر-السنة";
				titreButton = "تسجيل الدخول";
				accueillabel = "الصفحة الرئيسية";
				drowerParametre = "الإعدادات";
				drowerAssistance = "مساعدة";
				faq = "الاسئلة الشائعة";
				drowerExit = "أغلق";
				langue = "اللغة";
				mode = "الوضع الليلي";
				tooltiphome = "الذهاب إلى الصفحة الرئيسية";
				infoIncorect = "معلومات غير صحيحة";
				donneeInfo = "أدخل البيانات اللازمة";
				noConn = "تحقق من إتصالك بالأنترنيت";
				okDialog = "موافق";
				assistance = "مساعدة";
				guidlabel = 'الإرشادات';
				comptelabel = 'الملف الشخصي';
				denie_camera = " إذن الكاميرا مطلوب، حاول مرة أخرى";
				back_befor_scane = "لقد خرجت قبل مسح رمز الاستجابة السريعة";
				scane_autre_qr ="لقد قمت بمسح رمز غير صحيح";//-------
				present_ok="تمت العملية بنجاح";
        		present_no = 'لديك خطأ، حاول مرة أخرى';
				cNumApg = "Num Apogee";
				cDateNes = "تاريخ الولادة";
				cFiliere = "الشعبة";
				cId_dev = "id Tel";
				cInfG = "معلومات عامة";
				cInfF = "معلومات الشعب";
				cRes = "المسؤول عن";
				cAdr = "العنوان";
				cTel = "الهاتف";
				cSit = "الموقع إلكتروني";
				cMil = "البريد الإلكتروني";
				cFax = "الفاكس";
				noFil ="أنت لست من هذا الفصل";
				fq = 'الاسئلة الشائعة';
				q1 = "تطبيق إدارة الغياب";
				r1 = "هو تطبيق يستخدم رمز الاستجابة السريعة لإدارة الغياب دون استخدام الطريقة القديمة. لذلك سنوفر الوقت"; 
				q2 = "تغيير الهاتف";
				r2 = "إذا قمت بتغيير هاتفك ، يجب عليك مقابلة معلمك لتغيير عنوان MAC الخاص بجهازك في النظام";
				q3 = "حسابك";
				r3 = "كل شخص لديه حساب بفضل المعلومات من الإدارة";
				q4 = "الأمن والوصول";
				r4 = "اسم المستخدم: numéro d'apogée \n كلمة المرور: تاريخ الميلاد";
				rn = "ملاحظة";
				remarque = "يجب على كل شخص استخدام هاتفه الحقيقي في في المرة الأولى ";
				err_server = "خطأ في الخادم";
			});   
        }else{
				
			setState(() {//pour la page en English
				lan = 'e';
				colorVA = valid2;
				colorVE = valid1;
				colorVF = valid3;
				dL = 39; 
				dP = 32;
				titrePrincipal = "Authentication";
				hintUser = "Username";
				hintPasse = "YYYY-MM-DD";
				titreButton = "sign in";
				accueillabel = "Home";
				drowerParametre = "Settings";
				drowerAssistance = "Assistance";
				faq = "FAQ";
				drowerExit = "Close";
				langue = "languages";
				mode = "Night mode";
				tooltiphome = "Go to the homepage"; 
				infoIncorect = "Incorrect information";
				donneeInfo = "Enter the necessary data";
				noConn = "Check your connection";
				okDialog = "OK";
				assistance = "Assistance";
				guidlabel = 'Guidances';
				comptelabel = 'Profile';
				denie_camera = "Camera authorization is required, try again.";
				back_befor_scane = "You went out before scanning the QR code.";
				scane_autre_qr ="You have scanned an incorrect qr code";//-------
				present_ok="the operation is well done.";
        		present_no = 'You have an error, try again';
				cNumApg = "Num Apogee";
				cDateNes = "Date of birth";
				cFiliere = "Branch";
				cId_dev = "id Tel";
				cInfG = "General Information";
				cInfF = "Branch Informations";
				cRes = "Responsible of";
				cAdr = "Address";
				cTel = "Phone Numbers";
				cSit = "Web Site";
				cMil = "E-mail";
				cFax = "Fax";
				noFil ="you are not from this class";
				fq = 'Frequently asked questions';
				q1 = "Absence management application";
				r1 = "It is an application that uses the QR Code to manage absences without using the old method. so we're going to save time"; 
				q2 = "The change of telephone";
				r2 = "If you change your phone, you must meet your teacher to change the mac address of your device in the system";
				q3 = "your account";
				r3 = "Everyone has an account thanks to information from the administration";
				q4 = "Security & Access";
				r4 = "USERNAME : numéro d'apogée \n PASSWORD: date of birth";
				rn = "Observation";
				remarque = "each one must use their real phone in the first time ";
				err_server = "Erreur dans le serveur";
			});   
		}
	}
}//fin classe


