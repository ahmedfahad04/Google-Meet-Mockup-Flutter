import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: Column(
      children: [
        Header(context),
        MenuItems(context),
      ],
    ),
  );

  Widget Header(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top, // TODO 2: Need to know how MediaQuery works
    ),
    child: ListTile(
      title: Text('Meet', style: GoogleFonts.poppins(fontSize: 25),),
      leading: Image.asset('images/ngoogle.png', scale: 5.0,),  // TODO 3: how to resize image
      onTap: () {},
    ),
  );
  Widget MenuItems(BuildContext context) => Column(
    children: [
      const Divider(color: Colors.grey),

      // TODO 4: how to change the gap between the icon and text in listtile
      ListTile(
        title: Text('Settings', style: GoogleFonts.poppins(fontSize: 14, color: Colors.black, fontWeight: FontWeight.values[4]),),
        leading: const Icon(Icons.settings, color: Colors.black),
        onTap: () {},
      ),
      ListTile(
        title: Text('Send Feedback', style: GoogleFonts.poppins(fontSize: 14, color: Colors.black, fontWeight: FontWeight.values[4]),),
        leading: const Icon(Icons.feedback, color: Colors.black),
        onTap: () {},
      ),
      ListTile(
        title: Text('Help', style: GoogleFonts.poppins(fontSize: 14, color: Colors.black, fontWeight: FontWeight.values[4]),),
        leading: const Icon(Icons.help, color: Colors.black),
        onTap: () {},
      ),
    ],
  );
}
