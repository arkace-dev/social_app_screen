import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

class SearchBox extends StatelessWidget {
  final double padding;

  const SearchBox({this.padding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: Container(
        height: 65,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 25,
            ),
            Container(
              height: 36,
              width: 36,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: PINK_GRADIENT,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Friends',
                    hintStyle: TextStyle(
                      color: GREY_TEXT_COLOR,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 7,
              spreadRadius: 3,
            ),
          ],
        ),
      ),
    );
  }
}
