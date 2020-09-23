import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cahaya_halim_pool/widgets/course_details/hand_cursor.dart';

class AwesomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HandCursor(
          child: IconButton(
              onPressed: () {
                // do some magic
              },
              icon: Icon(Icons.star)),
        )
      ],
    );
  }
}
