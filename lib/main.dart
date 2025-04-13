import "package:flutter/material.dart";
import "package:lottie/lottie.dart";

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  BusinessCardApp({super.key});
  double radius = 112;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0F111A),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileImg(),
            SizedBox(height: 8),
            UserName(),
            JobTitle(),
            Divider(
              color: Color(0XFF1B2240),
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            MobileField(),
            LocationField(),
            GmailField(),
          ],
        ),
      ),
    );
  }
}

class JobTitle extends StatelessWidget {
  const JobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Flutter Developer",
      style: TextStyle(
        fontFamily: "Orbitron",
        fontSize: 28,
        color: Color(0XFF68C6C8),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Yasmine Mokhtar",
      style: TextStyle(
        fontFamily: "GreatVibes",
        fontSize: 32,
        color: Color(0XFFF72C9A),
      ),
    );
  }
}

class GmailField extends StatelessWidget {
  const GmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x8068C6C8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(Icons.email_rounded),
        title: Text("yasmine.ali.mokhtar@gmail.com"),
        textColor: Colors.white,
        iconColor: Colors.white,
      ),
    );
  }
}

class LocationField extends StatelessWidget {
  const LocationField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x8068C6C8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(Icons.location_on_rounded),
        title: Text("Miami, Alexandria, Egypt"),
        textColor: Colors.white,
        iconColor: Colors.white,
      ),
    );
  }
}

class MobileField extends StatelessWidget {
  const MobileField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0x8068C6C8),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(Icons.phone_android_rounded),
        title: Text("(+20)1111 765114"),
        textColor: Colors.white,
        iconColor: Colors.white,
      ),
    );
  }
}

class ProfileImg extends StatelessWidget {
  const ProfileImg({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 108,
      backgroundColor: Color(0XFFF72C9A),
      child: CircleAvatar(
        radius: 105,
        backgroundColor: Color(0xFF0F111A),
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("assets/images/me.jpeg"),
        ),
      ),
    );
  }
}