import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:tikodc/Pages/motdepasse.dart';

class connexion extends StatelessWidget {
  const connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              centerTitle: true,
              title: const Text('Connexion',
                  style: TextStyle(
                    color: Colors.black,
                  )),
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              actions: const [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Icon(
                    FontAwesomeIcons.circleQuestion,
                    color: Colors.black,
                  ),
                )
              ],
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                      child: Text('Téléphone',
                          style: TextStyle(
                            color: Colors.black,
                          ))),
                  Tab(
                      child: Text('E-mail/nom d\'utilisateur',
                          style: TextStyle(
                            color: Colors.black,
                          ))),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: [telephone(), email()],
        ),
      )),
    );
  }
}

class telephone extends StatefulWidget {
  const telephone({super.key});

  @override
  State<telephone> createState() => _telephoneState();
}

class _telephoneState extends State<telephone> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          IntlPhoneField(
            decoration: const InputDecoration(
              labelText: 'Téléphone',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'ML',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          ButtonTheme(
            minWidth: 50.0,
            height: 120.0,
            child: ElevatedButton(
                child: Text(
                  'Envoyer un code',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFFA2C59),
                  backgroundColor: Colors.grey[200],
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}

class email extends StatefulWidget {
  const email({super.key});

  @override
  State<email> createState() => _emailState();
}

class _emailState extends State<email> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email ou nom d\'utilisateur',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'svp veuillez saisir votre email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Mot de passe',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'svp veuillez saisir votre email';
                }
                return null;
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => AlertDialog(
                      title: Container(
                          height: MediaQuery.of(context).size.height * .50,
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
                                    ButtonTheme(
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle: const TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (_) => reinitialiser(),
                                          ));
                                        },
                                        child: const Text(
                                          'Téléphone',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    ButtonTheme(
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          textStyle: const TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(
                                            builder: (_) =>
                                                emailreinitialiser(),
                                          ));
                                        },
                                        child: const Text(
                                          'Email',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          )),
                    ),
                  ),
                );
              },
              child: const Text(
                'Mot de passe oublié',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ButtonTheme(
              child: ElevatedButton(
                  child: Text(
                    'connexion',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xFFFA2C59),
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}


