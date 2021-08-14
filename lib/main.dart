import 'package:flutter/material.dart';
import 'package:messenger/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBlackColor,
        appBar: AppBar(
          backgroundColor: kBlackColor,
          title: Row(
            children: [
              Image.asset(
                'assets/image_profile.png',
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Chats',
                style: whiteTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
              Spacer(),
              Image.asset(
                'assets/icon_camera.png',
                width: 40,
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'assets/icon_message.png',
                width: 40,
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              height: 42,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kWhiteColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    size: 20,
                    color: kIconColor,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Search',
                    style: greyTextStyle.copyWith(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story0.png',
                    title: 'Your Story',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story1.png',
                    title: 'Joshua',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story2.png',
                    title: 'Martin',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story3.png',
                    title: 'Kezia',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story4.png',
                    title: 'Martha',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story1.png',
                    title: 'Joshua',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story2.png',
                    title: 'Martin',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story3.png',
                    title: 'Kezia',
                  ),
                  StoryItem(
                    imageUrl: 'assets/image_story4.png',
                    title: 'Martha',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ChatItem(
              name: 'Martin Randolph',
              text: 'You: What’s man! · 9:40 AM',
              imageUrl: 'assets/image_friend1.png',
            ),
            ChatItem(
              name: 'Andrew Parker',
              text: 'You: Ok, thanks! · 9:25 AM',
              imageUrl: 'assets/image_friend2.png',
            ),
            ChatItem(
              name: 'Kezia Anne',
              text: 'You: Ok, See you in Tomorrow · Fri',
              imageUrl: 'assets/image_friend3.png',
            ),
            ChatItem(
              name: 'Maisy Humphrey',
              text: 'Have a good day, Maisy! · Fri',
              imageUrl: 'assets/image_friend4.png',
            ),
            ChatItem(
              name: 'Joshua Lawrence',
              text: 'To help you find the right group  · Thu',
              imageUrl: 'assets/image_friend5.png',
            ),
            ChatItem(
              name: 'Martin Randolph',
              text: 'You: What’s man! · 9:40 AM',
              imageUrl: 'assets/image_friend1.png',
            ),
            ChatItem(
              name: 'Andrew Parker',
              text: 'You: Ok, thanks! · 9:25 AM',
              imageUrl: 'assets/image_friend2.png',
            ),
            ChatItem(
              name: 'Kezia Anne',
              text: 'You: Ok, See you in Tomorrow · Fri',
              imageUrl: 'assets/image_friend3.png',
            ),
            ChatItem(
              name: 'Maisy Humphrey',
              text: 'Have a good day, Maisy! · Fri',
              imageUrl: 'assets/image_friend4.png',
            ),
            ChatItem(
              name: 'Joshua Lawrence',
              text: 'To help you find the right group  · Thu',
              imageUrl: 'assets/image_friend5.png',
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kBottomNavBarColor,
          showUnselectedLabels: true,
          unselectedItemColor: kGreyColor,
          selectedItemColor: kWhiteColor,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_chat.png',
                width: 24,
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_people.png',
                width: 24,
              ),
              label: 'People',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 52,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: greyTextStyle,
          ),
        ],
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String name;
  final String text;
  final String imageUrl;

  const ChatItem({
    Key? key,
    required this.name,
    required this.text,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                Text(
                  text,
                  style: greyTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
