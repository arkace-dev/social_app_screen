import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

class PostListItem extends StatelessWidget {
  final String postDes;
  final String profileImageDes;
  final String name;
  final int min;

  const PostListItem({
    this.postDes,
    this.profileImageDes,
    this.name,
    this.min,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width - 64;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: mediaQueryWidth + 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            child: Image.asset(
              postDes,
              fit: BoxFit.cover,
              width: mediaQueryWidth,
              height: mediaQueryWidth,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 7,
                    spreadRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(profileImageDes),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '${min}m ago',
                          style: TextStyle(
                            fontSize: 18,
                            color: GREY_TEXT_COLOR,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.more_vert,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
