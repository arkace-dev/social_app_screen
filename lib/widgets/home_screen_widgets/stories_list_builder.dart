import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

// Widgets
import '../home_screen_widgets/list_view_item.dart';

class StoriesListBuilder extends StatelessWidget {
  List<Widget> _listItemBuilder() {
    List<Widget> _list = [];
    for (int i = 0; i < 5; i++) {
      _list.add(
        ListViewItem(
          imageDes: 'assets/images/dp${i + 1}.jpg',
        ),
      );
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0, right: 8.0),
          child: Center(
            child: Container(
              width: 94,
              height: 94,
              child: Icon(
                Icons.add,
                size: 32,
                color: GREY_TEXT_COLOR,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(47),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
        ..._listItemBuilder(),
      ],
    );
  }
}
