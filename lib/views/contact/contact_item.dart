import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactItem extends StatelessWidget {
  String title;
  String deskription;
  IconData icon;

  ContactItem(this.title, this.deskription, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              flex: 2,
              child: Container(
                  alignment: Alignment.centerRight,
                  // color: Colors.yellow,
                  child: Icon(
                    icon,
                    size: 55,
                    color: Colors.blue,
                  ))),
          Flexible(
            flex: 1,
            child: SizedBox(
              width: 25,
            ),
          ),
          Flexible(
              flex: 3,
              child: Container(
                // color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text(
                        deskription,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
