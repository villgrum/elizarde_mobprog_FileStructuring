import 'package:elizarde_mobprog/widgets/notification_widget.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {
        'name': 'Mary Reched',
        'post': 'your recent post',
        'description': 'liked your post.',
        'avatarPath': 'assets/images/mary_avatar.jpg',
      },
      {
        'name': 'Ginger Azores',
        'post': 'your photo',
        'description': 'commented: "ayos ah"',
        'avatarPath': 'assets/images/ginger_avatar.jpg',
      },
      {
        'name': 'Lex Panerio',
        'post': 'NU Pep Squad',
        'description': 'reacted to your post.',
        'avatarPath': 'assets/images/lex_avatar.jpg',
      },
      {
        'name': 'Nea Macaspac',
        'post': 'your recent post',
        'description': 'mentioned you in a comment.',
        'avatarPath': 'assets/images/nea_avatar.jpg',
      },
      {
        'name': 'Zyrell De Guia',
        'post': 'your photo',
        'description': 'liked your photo.',
        'avatarPath': 'assets/images/zyrell_avatar.jpg',
      },
      {
        'name': 'James Catolos',
        'post': 'your recent post',
        'description': 'commented: "nice one sir"',
        'avatarPath': 'assets/images/james_avatar.jpg',
      },
      {
        'name': 'Mhark Merete',
        'post': 'your recent post',
        'description': 'reacted to your post.',
        'avatarPath': 'assets/images/mhark_avatar.jpg',
      },
      {
        'name': 'Iori Quintanar',
        'post': 'your photo',
        'description': 'commented: "ayos yan ah"',
        'avatarPath': 'assets/images/iori_avatar.jpg',
      },
      {
        'name': 'Gab Cruz',
        'post': 'your recent post',
        'description': 'liked your post.',
        'avatarPath': 'assets/images/gab_avatar.jpg',
      },
      {
        'name': 'Vienne Lamanilao',
        'post': 'your recent post',
        'description': 'mentioned you in a comment.',
        'avatarPath': 'assets/images/vienne_avatar.jpg',
      },
      {
        'name': 'Xiomara Cagampan',
        'post': 'your photo',
        'description': 'reacted to your photo.',
        'avatarPath': 'assets/images/xiomara_avatar.jpg',
      },
      {
        'name': 'Denise Marasigan',
        'post': 'your recent post',
        'description': 'commented: "nice ka diyan"',
        'avatarPath': 'assets/images/denise_avatar.jpg',
      },
      {
        'name': 'Mary Reched',
        'post': 'your recent post',
        'description': 'commented: "lupet"',
        'avatarPath': 'assets/images/mary_avatar.jpg',
      },
      {
        'name': 'Lex Panerio',
        'post': 'your photo',
        'description': 'liked your photo.',
        'avatarPath': 'assets/images/lex_avatar.jpg',
      },
      {
        'name': 'Ginger Azores',
        'post': 'your recent post',
        'description': 'reacted to your post.',
        'avatarPath': 'assets/images/ginger_avatar.jpg',
      },
      {
        'name': 'James Catolos',
        'post': 'your photo',
        'description': 'commented: "galing"',
        'avatarPath': 'assets/images/james_avatar.jpg',
      },
      {
        'name': 'Nea Macaspac',
        'post': 'your recent post',
        'description': 'liked your post.',
        'avatarPath': 'assets/images/nea_avatar.jpg',
      },
      {
        'name': 'Mhark Merete',
        'post': 'your photo',
        'description': 'commented: "LT HAHAHA"',
        'avatarPath': 'assets/images/mhark_avatar.jpg',
      },
      {
        'name': 'Denise Marasigan',
        'post': 'your recent post',
        'description': 'reacted to your post.',
        'avatarPath': 'assets/images/denise_avatar.jpg',
      },
      {
        'name': 'Kert Idian',
        'post': 'your recent post',
        'description': 'liked your post.',
        'avatarPath': 'assets/images/kert_avatar.jpg',
      },
    ];

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];

        return Column(
          children: [
            NotificationWidget(
              name: notification['name']!,
              post: notification['post']!,
              description: notification['description']!,
              avatarPath: notification['avatarPath']!,
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
