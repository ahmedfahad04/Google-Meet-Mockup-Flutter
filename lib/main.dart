import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_meet_mockup/page_1.dart';
import 'package:google_meet_mockup/page_2.dart';
import 'package:google_meet_mockup/navigation_drawer.dart';
import 'package:google_meet_mockup/window_1.dart';

void main() => (runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp())));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TODO 1: Don't know why this initial page is not working
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  int _currentIndex = 0;

  // good for enhanced performance
  // will build the pages once
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white70,
        title: Text('Meet',
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 22)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('images/letter.png'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // TODO 6: Why an error shows when I increase padding size and play the app in split screen?
          // Padding(padding: EdgeInsets.only(top: 5),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                // TODO 8: adding Sliding menu
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  minimumSize: Size(175, 42),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                    ),
                    builder: (context) => SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              'Get a meeting link to share',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[4]),
                            ),
                            leading: Icon(Icons.link, color: Colors.black),
                            onLongPress: () {},
                          ),
                          ListTile(
                            title: Text(
                              'Start an instant meeting',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[4]),
                            ),
                            leading: Icon(Icons.videocam_outlined,
                                color: Colors.black),
                            onTap: () async {
                              //TODO 9: URL not working properly..
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Schedule in Google Calendar',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[4]),
                            ),
                            leading:
                                Icon(Icons.calendar_today, color: Colors.black),
                            onTap: () {},
                          ),
                          ListTile(
                            title: Text(
                              'Close',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.values[4]),
                            ),
                            leading: Icon(Icons.close, color: Colors.black),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text(
                  'New meeting',
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
                ),
              ), // New Meeting
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue, side: const BorderSide(width: 1.0, color: Colors.black),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  minimumSize: const Size(185, 42),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) =>
                            const Window1()), //TODO 7: Adding page switching animation
                  );
                },
                child: Text(
                  'Join with a code',
                  style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.values[4]),
                ),
              ), // Join with a code
            ],
          ), // top buttons
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (page) {
                setState(() {
                  _currentIndex = page;
                });
              },
              children: const [
                Page1(),
                Page2(),
              ],
            ),
          ), // Center Elements
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.grey[500],
          currentIndex: _currentIndex,
          elevation: 0.0,
          onTap: (page) {
            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 50),
              curve: Curves.linear,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 190.0),
                child: Icon(Icons.circle, size: 10),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 170.0),
                child: Icon(Icons.circle, size: 10),
              ),
              label: '',
            ),
          ],
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
