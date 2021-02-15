import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String image;
  final String status;
  final String text;
  const CardComponent({
    Key key,
    this.text,this.image,this.status
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/${image}.png"),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(180, 180, 180, 0.5),
              offset: new Offset(0.0, 5.0),
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xff71C6EF), width: 3),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      '${text}',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '${status}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
