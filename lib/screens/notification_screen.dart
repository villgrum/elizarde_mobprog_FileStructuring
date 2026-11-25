import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';
import 'package:elizarde_mobprog/widgets/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
 const NotificationScreen({super.key});
 @override
 Widget build(BuildContext context) {
   return Container(
     color: Colors.white,
     width: ScreenUtil().screenWidth,
     child: Column(
       children: [
         NotificationWidget(
           description: 'Sample description',
           post: 'Sample Post',
           name: 'Sample Name',
         ),
         Divider(),
       ],
     ),
   );
 }
}