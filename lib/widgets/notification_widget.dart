import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.avatarPath,
  });

  final String name;
  final String post;
  final String description;
  final String avatarPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(22),
            backgroundImage: AssetImage(avatarPath),
          ),
          SizedBox(width: ScreenUtil().setSp(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
