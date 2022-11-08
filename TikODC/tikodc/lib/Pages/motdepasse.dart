import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class motpasse extends StatelessWidget {
  const motpasse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mot de passe',
      theme: ThemeData(backgroundColor: Colors.white),
      home: Scaffold(
          appBar: AppBar(
        title: Text('Mot de passe'),
      )),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
            height: MediaQuery.of(context).size.height * .90,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const reinitialiser(),
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
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => emailreinitialiser(),
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
            ));
      });
}

class reinitialiser extends StatefulWidget {
  const reinitialiser({super.key});

  @override
  State<reinitialiser> createState() => _reinitialiserState();
}

class _reinitialiserState extends State<reinitialiser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Réinitialiser',
            style: TextStyle(
              color: Colors.black,
              height: 50,
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
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            const Text(
              'Saisis ton numéro de téléphone',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Nous enverrons un code sur ton téléphone',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 10,
              ),
            ),
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
      ),
    );
  }
}

class emailreinitialiser extends StatefulWidget {
  const emailreinitialiser({super.key});

  @override
  State<emailreinitialiser> createState() => _emailreinitialiserState();
}

class _emailreinitialiserState extends State<emailreinitialiser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Réinitialiser',
              style: TextStyle(
                color: Colors.black,
                height: 50,
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
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              const Text(
                'Mot de passe oublié',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Nous t\' enverrons par email un code pour réinitialiser ton mot de passe',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 10,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Adresse e-mail',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'svp veuillez saisir votre email';
                  }
                  return null;
                },
              ),
              ButtonTheme(
                child: ElevatedButton(
                    child: Text(
                      'Réinitialiser',
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
        ));
  }
}
