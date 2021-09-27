import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/assets/asset.dart';
import 'package:flutter_application_1/constants/app_constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 270,
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kAccentColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search Products...",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins-Light",
                  ),
                ),
                kSearchIcon,
              ],
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            height: 50,
            width: 48,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: kSortIcon,
            ),
          )
        ],
      ),
    );
  }
}
