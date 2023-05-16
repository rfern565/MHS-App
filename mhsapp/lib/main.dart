import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  print('test');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: HomePage(),
      routes: {
        '/mySchedule': (context) => MySchedulePage(),
        '/myClubs': (context) => MyClubsPage(),
        '/browseClubs': (context) => BrowseClubsPage(),
        '/questions': (context) => questionsPage(),

      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Hello Mia!',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Text(
                    'What are you looking for?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/mySchedule');
                    },
                    child: Text(
                      ' My Schedule ',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 41),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/myClubs');
                    },
                    child: Text(
                      '    My Clubs    ',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 41),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/browseClubs');
                    },
                    child: Text(
                      'Browse Clubs',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 41),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/questions');
              },
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.question_answer,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}








class MySchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Schedule'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('My Schedule Page'),
      ),
    );
  }
}

class MyClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Clubs'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('My Clubs Page'),
      ),
    );
  }
}

class BrowseClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Browse Clubs'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Browse Clubs Page'),
      ),
    );
  }
}

class questionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('Frequently Asked Questions'),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'How do I sign up for a Club or SLG?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Reach out to club leaders about joining their clubs through the contact buttons located on the bottom right of their club cards. Club cards are located in the browse clubs tab.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'If I sign up for a Club or SLG am I comitting myself in anyway?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'No, unless communicated otherwise by the club leader who added you to the club you are not directly comitting yourself to direct action for the club in any way other than attendance at meetings.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'Do I have to apply or audition to get into any clubs?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'No, unless communicated otherwise by the club leader who you contacted regarding joining the club, you will not have to apply or audition to join any clubs.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    'How many clubs or SLGs should I join?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                  Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'There is no direct limit on the number of clubs or SLGs you can join, so feel free to join as many as you are interested in participarting in. However, we would reccomend not overextending yourself by joining more than you have time for.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                )
              ]
              ),
           )
        ]
    ),
    );
  }
}


