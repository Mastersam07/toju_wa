import 'package:tojuwa/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class InfoBox extends StatelessWidget {
  final String title;
  final Icon icon;
  final Color color;
  final int number;
  final Function onPressed;

  InfoBox({
    @required this.title,
    @required this.number,
    @required this.color,
    @required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: kBoxesRadius,
            color: kBoxLightColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: color,
                        child: icon,
                      ),
                      SizedBox(width: 5),
                      number == 0
                          ? SpinKitFadingCircle(
                        itemBuilder: (BuildContext context, int index) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: color,
                            ),
                          );
                        },
                      )
                          : Text(
                        '$number',
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
