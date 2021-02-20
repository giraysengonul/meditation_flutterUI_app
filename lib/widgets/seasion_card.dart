import 'package:flutter/material.dart';

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final Function press;

  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: Colors.grey,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 42.0,
                    width: 42.0,
                    decoration: BoxDecoration(
                      color: isDone ? Colors.deepPurpleAccent : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepPurpleAccent),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : Colors.deepPurpleAccent,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Session $seassionNum",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
