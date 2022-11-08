import 'package:flutter/material.dart';
import 'package:tikodc/Pages/connexion.dart';
import 'package:tikodc/Pages/inscription.dart';
import 'package:video_player/video_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

import 'Pages/profil.dart';

void main() {
  runApp(const MyApp());
}

// le navbar de TikOdc

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Tiktok',
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _mesPages = [
    AccueilPage(),
    PageInscription(),
    Text("Plus"),
    connexion(),
    PageProfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mesPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'Now',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/add.png',
                height: 70,
              ),
              label: ""),

          // icon: ImageIcon(
          //   AssetImage('assets/images/tiktok_add.jpg' ),
          //   size:25,
          // )
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Boîte de réception',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'profil',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF141518),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

//la section page d'accueil
class AccueilPage extends StatelessWidget {
  AccueilPage({super.key});
  final List<Map> tikodcItems = [
    // {"title":"1",
    // 'color':Colors.blue,},
    //    {"title":"2",
    // 'color':Colors.red[200],},
    //    {"title":"3",
    // 'color':Colors.green,},
    //Insersion des vidéos
    {
      "video": "assets/videos/video1.mp4",
    },
    {
      "video": "assets/videos/video2.mp4",
    },
    {
      "video": "assets/videos/video3.mp4",
    },
    {
      "video": "assets/videos/video4.mp4",
    },
    {
      "video": "assets/videos/video5.mp4",
    },
    {
      "video": "assets/videos/video6.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tikodcItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: Color(0xFF141518),
              child: Stack(children: [
                MyVideo(
                  videourl: i['video'],
                ),
                const ContenuPage(),
              ]),
            );
          },
        );
      }).toList(),
    );
  }
}

class MyVideo extends StatefulWidget {
  const MyVideo({Key? key, required this.videourl}) : super(key: key);
  final String videourl;

  @override
  State<MyVideo> createState() => _MyVideoState(this.videourl);
}

class _MyVideoState extends State<MyVideo> {
  late VideoPlayerController _controller;
  final String videourl;
  _MyVideoState(this.videourl);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videourl)
      ..initialize().then((_) {
        // _controller.play();

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class ContenuPage extends StatelessWidget {
  const ContenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              'Suivis',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Pour toi',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
        ),
        Expanded(
            child: Container(
          //  color:Colors.red[200],
          child: Row(children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '@Aichoumaiga_93',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'La patience est le chemin dor , Allah arme de patience et augmente votre Foi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Amina Yarabi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.music_note,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Son original',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ]),
            )),
            SizedBox(
              width: 80,
              // color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 70,
                    // color: Colors.blue[200],
                    child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/rose.jpg'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 70,
                    // color: Colors.white,
                    child: Column(children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 45,
                      ),
                      Text(
                        '50.0K',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 70,
                    // color: Colors.pink[100],
                    child: Column(children: const [
                      Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 45,
                      ),
                      Text(
                        '728',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 70,
                    // color: Colors.purple[200],
                    child: Column(children: const [
                      Icon(
                        Icons.bookmark,
                        color: Colors.white,
                        size: 45,
                      ),
                      Text(
                        '1000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 70,
                    // color: Colors.black,
                    child: Column(children: const [
                      Icon(
                        Icons.shortcut_sharp,
                        color: Colors.white,
                        size: 45,
                      ),
                      Text(
                        '500',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ]),
                  ),
                  AnimatedLogo()
                ],
              ),
            )
          ]),
        ))
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage('assets/images/disque.jpq'),
          ),
        ),
        child: Image.asset('assets/images/tiktok.jpq'),
      ),
    );
  }
}
