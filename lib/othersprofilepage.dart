import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:softarchpro/widgets/navigation_drawer.dart';
import 'package:softarchpro/widgets/circle_button.dart';
import 'package:softarchpro/widgets/post_contrainer.dart';
import 'package:softarchpro/widgets/bottom_banner_ad.dart';

class OthersProfilePage extends StatefulWidget {
  _OthersProfilePage createState() => _OthersProfilePage();
}

class _OthersProfilePage extends State<OthersProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  bool follow =false;
  String avatarURL =
      "https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.6435-9/30441178_1708109815943486_3812504059043119104_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ad2b24&_nc_eui2=AeG9iADga4oU8aZfSgydY1XDPiiv0fRh-_U-KK_R9GH79Rmx7Jvfx9bO5nqCGD4hliM5a5RQAyn4G3VNKP7p7CxS&_nc_ohc=-R7hR6YD7jwAX8q3Nxu&tn=zczj23AEyJI8ak6P&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfBDtp0AuHSIu7CLujo980LOIdJoMhuLZL4FAQOa5rc6cw&oe=639035C4";
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: NavigateDrawer(),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomBannerAd(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 222, 105, 21),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
              'KMITL',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          Row(
              children: <Widget>[
                Text(
                  'NEWS',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
        ]),
        actions: <Widget>[
          /*CircleButton(
              icon: FaIcon(FontAwesomeIcons.bell),
              iconSize: 23.0,
              onPressed: showBanner),*/
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
              backgroundImage: NetworkImage(avatarURL),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Under Kee",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (follow)
                                setState(() => follow = false);
                              else
                                setState(() => follow = true);
                    print("Follow");
                  },
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    duration: Duration(milliseconds: 300),
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(
                        color: follow?Colors.orange : Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: follow ?  Colors.transparent : Colors.grey.shade100 )),
                    child: Center(
                      child: Text(

                        follow ? "Following" : "Follow",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  alignment: Alignment.centerRight,
                  icon: FaIcon(FontAwesomeIcons.flag),
                  iconSize: 20,
                  color: Colors.orange,
                  onPressed: () {
                    print("Report ur mom");
                    
                  },
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.orange,
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


