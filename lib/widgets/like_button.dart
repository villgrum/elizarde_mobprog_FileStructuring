import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/constant.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class LikeButton extends StatelessWidget {
  final int? numOfLikes;

  const LikeButton({super.key, this.numOfLikes});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.thumb_up, color: fbPrimary),
      label: CustomText(
        text: numOfLikes.toString(),
        fontSize: ScreenUtil().setSp(12),
        color: fbDarkPrimary,
      ),
    );
  }
}
