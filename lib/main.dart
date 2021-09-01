import 'package:flutter/material.dart';
import 'package:youtube_flutter_copy/models/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
      home: const MyHomePage(title: 'YouTube'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Video> _videos = [
    Video(
        id: 1,
        title: 'Do I Regret Selling Twitch to Jeff Bezos for \$970 Million?',
        thumbnail:
            'https://i.ibb.co/xGwJqRB/Screen-Shot-2021-09-01-at-23-21-22.png'),
    Video(
        id: 2,
        title: 'Lupe Fiasco, Guy Sebastian - Battle Scars (Lyrics)',
        thumbnail:
            'https://i.ibb.co/FVgNLTT/Screen-Shot-2021-09-02-at-00-15-42.png'),
    Video(
        id: 3,
        title: 'Two Unicorn Founders on Books That Changed Their Lives',
        thumbnail:
            'https://i.ibb.co/1vG6H80/Screen-Shot-2021-09-02-at-00-17-39.png'),
    Video(
        id: 4,
        title: 'Apple X IBM: Musuh Bebuyutan Naik Pelaminan',
        thumbnail:
            'https://i.ibb.co/HHTk2tr/Screen-Shot-2021-09-02-at-00-20-38.png'),
    Video(
        id: 5,
        title: 'Business Rebound Airbnb di tengah Pandemi',
        thumbnail:
            'https://i.ibb.co/vhkk6Tv/Screen-Shot-2021-09-02-at-00-23-02.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 1),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              height: 25,
            ),
            Container(
              child: Text(widget.title),
              margin: const EdgeInsets.only(left: 7),
            ),
          ],
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                size: 30,
              )),
          IconButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 25,
              )),
          IconButton(
              padding: const EdgeInsets.all(10.0),
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 25,
              )),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile-image.jpeg'),
            ),
          )
        ],
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color.fromRGBO(40, 40, 40, 1)),
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Image.network(_videos[index].thumbnail),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile-image.jpeg'),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Text(_videos[index].title,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        height: 1.3)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      'Justin Kan',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(170, 170, 170, 1),
                                          fontSize: 14),
                                    ),
                                    Text('21 rb x ditonton',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                170, 170, 170, 1),
                                            fontSize: 14)),
                                    Text('2 minggu yang lalu',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                170, 170, 170, 1),
                                            fontSize: 14))
                                  ],
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: _videos.length,
          )),
    );
  }
}
