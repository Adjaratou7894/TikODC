import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/Pages/connexion.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Profil',
                style: TextStyle(
                  color: Colors.black,
                )),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            actions: const [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(children: [
            //photo de profile
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),

            //Nom d'utilisateur
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('@nomUtilisateur',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),

            //Les trois cadres pour le nombre
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: const [
                        Text(
                          '37',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'suivis',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: const [
                        Text(
                          '8',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Follower',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: const [
                        Text(
                          '56',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '  Likes  ',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),

            //  Bouton de connexiion
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //       Text(
                //   'Retrouvez Tes favoris',
                //   style: TextStyle(color: Colors.grey[700]),
                // ),
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 40),
                    child: ElevatedButton(
                      child: Text(
                        'connecte-toi ou inscris-toi',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFA2C59),
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        //debut du popup d'inscription
                        showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              var media = MediaQuery.of(context).size.height;
                              // var mediaW =  MediaQuery.of(context).size.width;
                              return Container(
                                height: media * .95,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Center(
                                    child: Column(children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
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
                                      const Text(
                                        'Inscription à TikOdc',
                                        style: TextStyle(
                                          fontSize: 25.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      const Text(
                                        'crée un profil, suivis autres comptes, crée tes propres vidéos et bien plus encore .',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black54,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      ButtonTheme(
                                        minWidth: 250.0,
                                        child: ElevatedButton(
                                          onPressed: () => {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            side: BorderSide(
                                                color: Colors.grey, width: 0.5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const <Widget>[
                                                Expanded(
                                                  flex: 1,
                                                  child: FaIcon(
                                                    FontAwesomeIcons.user,
                                                    color: Colors.black45,
                                                  ),
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
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      ButtonTheme(
                                        minWidth: 250.0,
                                        child: ElevatedButton(
                                          onPressed: () => {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            side: BorderSide(
                                                color: Colors.grey, width: 0.5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                            backgroundColor: Colors.white,
                                            side: BorderSide(
                                                color: Colors.grey, width: 0.5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const <Widget>[
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
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      ButtonTheme(
                                        minWidth: 250.0,
                                        child: ElevatedButton(
                                          onPressed: () => {},
                                          style: ElevatedButton.styleFrom(
                                            // shadowColor: Colors.white,
                                            backgroundColor: Colors.white,

                                            side: BorderSide(
                                                color: Colors.grey, width: 0.5),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const <Widget>[
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
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 40),
                                        child: Text(
                                          'En continuant, tu acceptes nos Conditions dutilisation reconnais avoir lu notre Politique de confidentialité pour savoir comment nous collections, utilisons et partegeons tes données et notre Politique sur cookies pour savoir comment nous utilisons les cookies.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          color: Colors.grey[200],
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Tu as déjà un compte?',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15),
                                              ),
                                              const SizedBox(height: 3),
                                              TextButton(
                                                style: TextButton.styleFrom(
                                                  textStyle: const TextStyle(
                                                    fontSize: 15,
                                                  ),
                                                ),

                                                //******************debut du pop de connexion*******************************
                                                onPressed: () {
                                                  showModalBottomSheet<void>(
                                                      context: context,
                                                      isScrollControlled: true,
                                                      builder: (BuildContext
                                                          context) {
                                                        var media =
                                                            MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height;
                                                        // var mediaW =  MediaQuery.of(context).size.width;
                                                        return Container(
                                                          height: media * .95,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Center(
                                                              child: Column(
                                                                  children: <
                                                                      Widget>[
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: <
                                                                          Widget>[
                                                                        GestureDetector(
                                                                          onTap: () =>
                                                                              Navigator.pop(context),
                                                                          child:
                                                                              Icon(Icons.close),
                                                                        ),
                                                                        Icon(FontAwesomeIcons
                                                                            .circleQuestion),
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          50.0,
                                                                    ),
                                                                    const Text(
                                                                      'Connecte-toi à TikOdc',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          10.0,
                                                                    ),
                                                                    const Text(
                                                                      'Gère ton compte, consulte  les notifications, commente vidéos et bien plus encore .',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16.0,
                                                                        color: Colors
                                                                            .black54,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                    ),
                                                                    const SizedBox(
                                                                      height:
                                                                          20.0,
                                                                    ),
                                                                    ButtonTheme(
                                                                      minWidth:
                                                                          250.0,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () =>
                                                                                {
                                                                          Navigator.of(context)
                                                                              .push(
                                                                            MaterialPageRoute(
                                                                              builder: (_) => connexion(),
                                                                            ),
                                                                          )
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          side: BorderSide(
                                                                              color: Colors.grey,
                                                                              width: 0.5),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              10),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const <Widget>[
                                                                              Expanded(
                                                                                flex: 1,
                                                                                child: FaIcon(
                                                                                  FontAwesomeIcons.user,
                                                                                  color: Colors.black45,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 2,
                                                                                child: Text(
                                                                                  'Utiliser téléphone/e-mail/nom d\'utilisateur',
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
                                                                      height:
                                                                          15.0,
                                                                    ),
                                                                    ButtonTheme(
                                                                      minWidth:
                                                                          250.0,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () =>
                                                                                {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          side: BorderSide(
                                                                              color: Colors.grey,
                                                                              width: 0.5),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              10),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
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
                                                                                  'Continuer avec Facebook',
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
                                                                      height:
                                                                          15.0,
                                                                    ),
                                                                    ButtonTheme(
                                                                      minWidth:
                                                                          250.0,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () =>
                                                                                {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          backgroundColor:
                                                                              Colors.white,
                                                                          side: BorderSide(
                                                                              color: Colors.grey,
                                                                              width: 0.5),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              10),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const <Widget>[
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
                                                                                  'Continuer avec Google',
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
                                                                      height:
                                                                          15.0,
                                                                    ),
                                                                    ButtonTheme(
                                                                      minWidth:
                                                                          250.0,
                                                                      child:
                                                                          ElevatedButton(
                                                                        onPressed:
                                                                            () =>
                                                                                {},
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          // shadowColor: Colors.white,
                                                                          backgroundColor:
                                                                              Colors.white,

                                                                          side: BorderSide(
                                                                              color: Colors.grey,
                                                                              width: 0.5),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              10),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: const <Widget>[
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
                                                                                  'Continuer avec Twitter',
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
                                                                      height:
                                                                          10,
                                                                    ),
                                                                    const Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              40),
                                                                      child:
                                                                          Text(
                                                                        'En continuant, tu acceptes nos Conditions dutilisation reconnais avoir lu notre Politique de confidentialité pour savoir comment nous collections, utilisons et partegeons tes données et notre Politique sur cookies pour savoir comment nous utilisons les cookies.',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10),
                                                                      ),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 5,
                                                                    ),
                                                                    Container(
                                                                        color: Colors.grey[
                                                                            200],
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            const Text(
                                                                              'Tu n\'as de compte?',
                                                                              style: TextStyle(color: Colors.black, fontSize: 15),
                                                                            ),
                                                                            const SizedBox(height: 3),
                                                                            TextButton(
                                                                              style: TextButton.styleFrom(
                                                                                textStyle: const TextStyle(
                                                                                  fontSize: 15,
                                                                                ),
                                                                              ),
                                                                              onPressed: () {},
                                                                              child: const Text(
                                                                                'Inscription',
                                                                                style: TextStyle(color: Color(0xFFFA2C59), fontWeight: FontWeight.bold),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ))
                                                                  ]),
                                                            ),
                                                          ),
                                                        );
                                                      });
                                                },

                                                child: const Text(
                                                  'Connexion',
                                                  style: TextStyle(
                                                      color: Color(0xFFFA2C59),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ))
                                    ]),
                                  ),
                                ),
                              );
                            });
                        //fin du show
                      },
                    )),
              ],
            ),

            // bio
          ]),
        ));
  }
}
