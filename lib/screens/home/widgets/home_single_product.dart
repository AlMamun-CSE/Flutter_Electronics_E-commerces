import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/app_constants.dart';

class HomeSingleProduct extends StatefulWidget {
  final image;
  const HomeSingleProduct({Key? key, required this.image}) : super(key: key);

  @override
  State<HomeSingleProduct> createState() => _HomeSingleProductState();
}

class _HomeSingleProductState extends State<HomeSingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: kAccentColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sony",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
              Text(
                "Playstation 5",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.grey[200],
                ),
              )
            ],
          ),
          SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.image,
              height: 230,
            ),
            SizedBox(
              height: 10,
            ),
        ],
      ),
    );
  }
}
