import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String text;
  final int selectedPage;
  final int pageNumber;
  final double width;
  final Function onPressed;

  TabButton(
      {required this.text,
      required this.selectedPage,
      required this.pageNumber,
      required this.width,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  color: selectedPage == pageNumber
                      ? Colors.deepPurple
                      : Colors.black),
            ),
            if (selectedPage == pageNumber)
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(
                        vertical: 0, horizontal: width * 0.05),
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.deepPurple,
                    )),
              )
            else
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(
                        vertical: 0, horizontal: width * 0.05),
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.transparent,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
