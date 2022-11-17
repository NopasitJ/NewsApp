import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:softarchpro/editprofilepage.dart';
import 'package:softarchpro/widgets/navigation_drawer.dart';
import 'package:softarchpro/widgets/circle_button.dart';
import 'package:softarchpro/widgets/widgets.dart';
import 'package:softarchpro/widgets/post_contrainer.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  String avatarURL1 =
      "https://i.pinimg.com/originals/d1/1e/20/d11e20d44501e1a59439b5344e07f5d7.jpg";
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: NavigateDrawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0.0,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "KMITL",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Row(
            children: [
              Text(
                "News",
                style: TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ]),
        actions: <Widget>[
          CircleButton(
              icon: FaIcon(FontAwesomeIcons.bell),
              iconSize: 23.0,
              onPressed: () => print('bell')),
          CircleButton(
            icon: FaIcon(FontAwesomeIcons.gripVertical),
            iconSize: 23.0,
            onPressed: _openEndDrawer,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 56,
              backgroundImage: NetworkImage(avatarURL1),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Thanapum Chaipunna",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.pen),
                    iconSize: 20,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfilepage()));
                    }),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.red,
                height: 18.0,
                thickness: 0.5,
              ),
            ),
            
            
            Expanded(
              child: Container(
                child: PostContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
