import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagButton extends StatelessWidget {
  final void Function()? onPressed;

  const TagButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          "tag",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          elevation: 3,
          shape: StadiumBorder(),
        ),
      ),
    );
  }
}