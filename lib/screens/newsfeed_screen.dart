import 'package:elizarde_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> posts = [
      {
        'userName': 'Mhark Merete',
        'postContent': 'LF lower box NU side',
        'date': '2 hours ago',
        'numOfLikes': 10,
        'hasImage': false,
        'avatarPath': 'assets/images/mhark_avatar.jpg',
      },
      {
        'userName': 'Lex Panerio',
        'postContent': 'So Excited for 10th Win. #NUTribe',
        'date': 'November 21, 2026',
        'numOfLikes': 3000,
        'hasImage': true,
        'avatarPath': 'assets/images/lex_avatar.jpg',
        'postImagePath': 'assets/images/season87cdc.jpg',
      },
      {
        'userName': 'Michal Alertaa',
        'postContent': 'I love FEU!',
        'date': 'November 25, 2026',
        'numOfLikes': 45,
        'hasImage': false,
        'avatarPath': 'assets/images/michal_avatar_final.jpg',
      },
      {
        'userName': 'Kert Idian',
        'postContent': 'Konnichiwa :3',
        'date': 'November 27, 2026',
        'numOfLikes': 120,
        'hasImage': true,
        'avatarPath': 'assets/images/kert_avatar.jpg',
        'postImagePath': 'assets/images/kert_post_final.jpg',
      },
    ];

    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return NewsfeedCard(
          userName: post['userName'],
          postContent: post['postContent'],
          date: post['date'],
          numOfLikes: post['numOfLikes'],
          hasImage: post['hasImage'],
          avatarPath: post['avatarPath'],
          postImagePath: post['postImagePath'],
        );
      },
    );
  }
}
