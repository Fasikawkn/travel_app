import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final String date;

  PopularPlace(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.date});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () => () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

//        margin: EdgeInsets.all(10),
        child: Container(
          height: height * 0.12,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(
                        (10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(
                              (10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/${this.imageUrl}',
                                height: height * 0.09,
                                width: width * 0.15,
//                    height: 350,
//                    width: 280,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${this.title}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height / width * 8,
                              ),
                            ),
                            Text(
                              "${this.date}",
                              style: TextStyle(fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ],
                    ),
//                child: Image.network(this.imageUrl, ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
