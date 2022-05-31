import 'package:flutter/material.dart';

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  int _select = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          leading: Icon(Icons.search),
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => <PopupMenuEntry<int>>[
                PopupMenuItem(
                  child: Text('Item 1'),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text('Item 2'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('Item 3'),
                  value: 3,
                ),
                PopupMenuItem(
                  child: Text('Item 4'),
                  value: 4,
                ),
                PopupMenuItem(
                  child: Text('Item 5'),
                  value: 5,
                ),
              ],
              onSelected: (int pop) {
                setState(() {
                  _select = pop;
                  print('$_select');
                });
              },
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Color.fromARGB(255, 11, 2, 26),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    'Browse',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
                TabBar(
                  tabs: [
                    Tab(text: 'MOODS'),
                    Tab(text: 'ARTISTS'),
                    Tab(text: 'PODCASTS')
                  ],
                  labelColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(top: 40, left: 20),
                    children: [
                      ClipRRect(
                          child: buildCardChill(),
                          borderRadius: BorderRadius.circular(25)),
                      SizedBox(width: 12),
                      ClipRRect(
                        child: buildCardParty(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      SizedBox(width: 12),
                      ClipRRect(
                        child: buildCardNight(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
                Row(
                  children: [Text('PLAYLIST'),]
                )
              ],
            ),
            Container(color: Colors.black),
            Container(color: Colors.blue)
          ],
        ),
      ),
    );
  }

  Widget buildCardChill() => Container(
        width: 165,
        height: 250,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Stack(
          children: [
            SizedBox(
              width: 165,
              height: 250,
              child: Image.network(
                'https://i.scdn.co/image/ab67706c0000bebbd4dc17f3f12ae474627d138f',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            Positioned(
              child: Container(
                alignment: Alignment.center,
                child: Text('TRAP'),
                width: 165,
                height: 40,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
              bottom: 0,
            ),
          ],
        ),
      );
  Widget buildCardParty() => Container(
        width: 165,
        height: 250,
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(
              width: 165,
              height: 250,
              child: Image.network(
                'https://i.scdn.co/image/ab67616d0000b273dc30583ba717007b00cceb25',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4),
            Positioned(
              child: Container(
                alignment: Alignment.center,
                child: Text('CLASSIC ROCK'),
                width: 165,
                height: 40,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
              bottom: 0,
            ),
          ],
        ),
      );
  Widget buildCardNight() => Container(
        width: 165,
        height: 250,
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(
              width: 165,
              height: 250,
              child: Image.network(
                'https://wallpapercave.com/uwp/uwp2331864.jpeg',
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 4),
            Positioned(
              child: Container(
                alignment: Alignment.center,
                child: Text('NIGHT DRIVE'),
                width: 165,
                height: 40,
                color: Color.fromARGB(200, 255, 255, 255),
              ),
              bottom: 0,
            ),
          ],
        ),
      );
}
