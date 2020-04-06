import 'package:flutter/material.dart';
import 'package:social_app_screen/widgets/home_screen_widgets/post_list_item.dart';

// Widgets
import '../widgets/home_screen_widgets/stories_list_builder.dart';
import '../widgets/home_screen_widgets/search_box.dart';
import '../widgets/home_screen_widgets/profile_container.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _listOfPosts = [
    {
      'name': 'Shane Robertson',
      'min': 32,
      'postDes': 'assets/images/post2.jpg',
      'profileImageDes': 'assets/images/dp5.jpg',
    },
    {
      'name': 'Sam Park',
      'min': 38,
      'postDes': 'assets/images/post1.jpg',
      'profileImageDes': 'assets/images/dp8.png',
    },
    {
      'name': 'Nova Hill',
      'min': 41,
      'postDes': 'assets/images/post4.jpg',
      'profileImageDes': 'assets/images/dp6.jpg',
    },
    {
      'name': 'Chris White',
      'min': 53,
      'postDes': 'assets/images/post3.jpg',
      'profileImageDes': 'assets/images/dp7.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: ProfileContainer(
            userName: 'Arkace',
            imagePath: 'assets/images/my_dp.png',
          ),
        ),
        preferredSize: Size.fromHeight(130),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30),
            SearchBox(padding: 32.0),
            const SizedBox(height: 40),
            Container(height: 100, child: StoriesListBuilder()),
            const SizedBox(height: 24),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, index) => PostListItem(
                postDes: _listOfPosts[index]['postDes'],
                profileImageDes: _listOfPosts[index]['profileImageDes'],
                name: _listOfPosts[index]['name'],
                min: _listOfPosts[index]['min'],
              ),
              itemCount: _listOfPosts.length,
            ),
          ],
        ),
      ),
    );
  }
}
