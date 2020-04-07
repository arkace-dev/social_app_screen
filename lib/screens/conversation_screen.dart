import 'package:flutter/material.dart';

// Widgets
import '../widgets/home_screen_widgets/search_box.dart';
import '../widgets/conversation_screen_widgets/conversation_list_item.dart';

// Utils
import '../utils/colors.dart';

class ConversationScreen extends StatelessWidget {
  static const routeName = '/conversation-screen';

  final List<Map<String, String>> _conversationList = [
    {
      'imageDes': 'assets/images/dp3.jpg',
      'name': 'Tony Stark',
      'lastChat': 'I am Iron Man!'
    },
    {
      'imageDes': 'assets/images/dp4.jpg',
      'name': 'Natasha Romanoff',
      'lastChat': 'Black Widow!'
    },
    {
      'imageDes': 'assets/images/dp5.jpg',
      'name': 'Bruce Banner',
      'lastChat': 'Hulk Smash!'
    },
    {
      'imageDes': 'assets/images/dp6.jpg',
      'name': 'Night Monkey',
      'lastChat': 'It\'s Spiderman!'
    },
    {
      'imageDes': 'assets/images/dp7.jpg',
      'name': 'Ultron',
      'lastChat': 'I am Destruction!'
    },
    {
      'imageDes': 'assets/images/dp8.png',
      'name': 'Thor',
      'lastChat': 'Thunder⚡'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 40.0,
              bottom: 24.0,
            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.chevron_left,
                    size: 28,
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
                const Spacer(),
                GestureDetector(
                  child: Icon(
                    Icons.more_vert,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(80),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 32.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'My Conversations',
                style: TextStyle(
                  fontSize: 26,
                  color: BLUE_TEXT_COLOR,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              SearchBox(padding: 0),
              const SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, index) => ConversationListItem(
                  imageDes: _conversationList[index]['imageDes'],
                  name: _conversationList[index]['name'],
                  lastChat: _conversationList[index]['lastChat'],
                ),
                itemCount: _conversationList.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
