import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageInscription extends StatelessWidget {
  const PageInscription({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inscription',
      theme: ThemeData(backgroundColor: Colors.white),
      home: Scaffold(appBar: AppBar(title: Text('Inscription'),)),
      
     
      );
    
  }
}
void _openPopup(context){
   showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context){
              return Container(height: MediaQuery.of(context).size.height* .90,
              child: Padding(padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(children:
                <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:< Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.close),
                      ),
                      Icon(FontAwesomeIcons.circleQuestion),
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const  Text('Inscription à TikOdc', style:TextStyle(fontSize:25.0,),),
                   const SizedBox(
                    height: 10.0,
                  ),
                const   Text('crée un profil, suivis autres comptes, crée tes propres vidéos et bien plus encore .', style:TextStyle(fontSize:16.0,color: Colors.black54,), textAlign: TextAlign.center,),
                const   SizedBox(
                    height: 20.0,
                  ),
                  ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                   backgroundColor:Color(0xFFFA2C59),
                  shadowColor: Colors.white,
                        ),
         
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(FontAwesomeIcons.user),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Utilise numéro or email',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                                
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                ),
              const   SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                   side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 const SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                   backgroundColor:Color(0xFFFA2C59),
                  shadowColor: Colors.white,
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:const  <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec Google',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
               const  SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: ElevatedButton(
                    onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                   side: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const  <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue avec Twitter',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
                  

             

              ),
               ),
              ),
              );

            });
  
}