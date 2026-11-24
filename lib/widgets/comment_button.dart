import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/constant.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.comment, color: fbPrimary),
      label: CustomText(
        text: 'Comment',
        fontSize: ScreenUtil().setSp(12),
        color: fbDarkPrimary,
      ),
    );
  }
}
