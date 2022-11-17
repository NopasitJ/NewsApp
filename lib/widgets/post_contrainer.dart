import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:intl/intl.dart';
import 'package:softarchpro/widgets/tag_button.dart';
import 'package:softarchpro/widgets/icbutton.dart';
import 'package:softarchpro/widgets/widgets.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            //height: MediaQuery.of(context).size.height*0.6,
            child: _postsListView(context),
          ),
        ),
      ],
    );
  }

  Widget _postAuthorRow(BuildContext context) {
    const double avatarDiameter = 44;
    var now = DateTime.now();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.95,
              color: Colors.green,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      //**************************avatar******************************
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          width: avatarDiameter,
                          height: avatarDiameter,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(avatarDiameter / 2),
                            //ใส่รูป
                            child: Image(
                              image: NetworkImage(
                                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      //***************************************************************
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              //ใส่ชื่อแต่ละคนโพสต์
                              'Username',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  //decoration: BoxDecoration(color: Colors.red),
                                  alignment: Alignment.centerLeft,
                                  height: 15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: ListView.builder(
                                    itemCount: 8,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return TagButton(onPressed: () => print('tag'),);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IcButton(
                          icon: FaIcon(FontAwesomeIcons.flag),
                          iconSize: 23.0,
                          onPressed: () => print("report")),
                    ],
                  ),
                  _postCaption(context),
                  _postImage(context),
                  _postImage(context),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                              child: Text(
                                '${now.day}/${now.month}/${now.year}   ${now.hour.toString().padLeft(2,'0')}.${now.minute.toString().padLeft(2,'0')} น.',
                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IcButton(
                          icon: FaIcon(FontAwesomeIcons.share),
                          iconSize: 23.0,
                          onPressed: () => print("share")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _postImage(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Image(
        image: NetworkImage("https://dc.lnwfile.com/_/dc/_raw/u8/0p/0u.jpg"),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _postCaption(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ),      child: Text(
        'F*ck youaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _postView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _postAuthorRow(context),
      ],
    );
  }

  Widget _postsListView(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return _postView(context);
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
    );
  }

}