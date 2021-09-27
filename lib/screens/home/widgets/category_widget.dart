import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isAll = true;
  bool isPS5 = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Categories",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 29,
          color: Color(0xffFFFFFF),
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(
                () {
                  isAll = true;
                  isPS5 = false;
                },
              );
            },
            child: Tab(
              icon: Text(
                "ALL",
                style: TextStyle(
                    fontSize: 16, color: isAll ? Colors.white : Colors.grey),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(
                () {
                  isAll = false;
                  isPS5 = true;
                },
              );
            },
            child: Tab(
              icon: Text(
                "PS5",
                style: TextStyle(
                    fontSize: 16, color: isPS5 ? Colors.white : Colors.grey),
              ),
            ),
          ),
          Tab(
            icon: Text(
              "PS4",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Tab(
            icon: Text(
              "Xbox one",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Tab(
            icon: Text(
              "Xbox one X",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
