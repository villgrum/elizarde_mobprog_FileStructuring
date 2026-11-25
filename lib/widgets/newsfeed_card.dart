import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/constant.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:elizarde_mobprog/widgets/like_button.dart';
import 'package:elizarde_mobprog/widgets/comment_button.dart';
import 'package:material_ui/material_ui.dart';
class NewsfeedCard extends StatelessWidget {
 final String userName;
 final String postContent;
 final String date;
 final int? numOfLikes;
 final bool? hasImage;
 final String? avatarPath;
 final String? postImagePath;
 const NewsfeedCard({
   super.key,
   required this.userName,
   required this.postContent,
   required this.date,
   this.numOfLikes,
   this.hasImage,
   this.avatarPath,
   this.postImagePath,
 });
 @override
 Widget build(BuildContext context) {
   final screenUtilSp = ScreenUtil().setSp(10);
   final screenUtilWidth = ScreenUtil().setWidth(10);
   final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
   final screenUtilIconSize = ScreenUtil().setSp(15);
   return Card(
     margin: EdgeInsets.all(screenUtilSp),
     child: Padding(
       padding: EdgeInsets.all(screenUtilSp),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             children: [
               CircleAvatar(
                 radius: ScreenUtil().setSp(20),
                 backgroundImage: avatarPath != null
                     ? AssetImage(avatarPath!)
                     : null,
                 child: avatarPath == null ? const Icon(Icons.person) : null,
               ),
               SizedBox(width: screenUtilWidth),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CustomText(
                     text: userName,
                     fontSize: screenUtilFontUserNameSize,
                     color: Colors.black,
                     fontWeight: FontWeight.bold,
                   ),
                   Row(
                     children: [
                       CustomText(
                         text: date,
                         fontSize: ScreenUtil().setSp(12),
                         color: Colors.grey,
                       ),
                       SizedBox(width: ScreenUtil().setWidth(3)),
                       Icon(
                         Icons.public,
                         color: Colors.grey,
                         size: screenUtilIconSize,
                       ),
                     ],
                   ),
                 ],
               ),
               const Spacer(),
               const Icon(Icons.more_horiz),
             ],
           ),
           SizedBox(height: ScreenUtil().setHeight(5)),
           CustomText(
             text: postContent,
             fontSize: ScreenUtil().setSp(12),
             color: Colors.black,
           ),
           SizedBox(height: ScreenUtil().setHeight(5)),
           hasImage == true
               ? Image(
                   image: AssetImage(
                     postImagePath ?? 'assets/images/season87cdc.jpg',
                   ),
                   width: double.infinity,
                   fit: BoxFit.cover,
                 )
               : const SizedBox.shrink(),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               LikeButton(numOfLikes: numOfLikes),
               const CommentButton(),
               TextButton.icon(
                 onPressed: () {},
                 icon: const Icon(Icons.redo, color: fbDarkPrimary),
                 label: CustomText(
                   text: 'Share',
                   fontSize: ScreenUtil().setSp(12),
                   color: fbDarkPrimary,
                 ),
               ),
             ],
           ),
           Row(
             children: [
               const Icon(Icons.person),
               SizedBox(width: ScreenUtil().setWidth(10)),
               Container(
                 padding: EdgeInsets.fromLTRB(
                   ScreenUtil().setWidth(10),
                   0,
                   0,
                   0,
                 ),
                 alignment: Alignment.centerLeft,
                 height: ScreenUtil().setHeight(25),
                 width: ScreenUtil().setWidth(330),
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.all(
                     Radius.circular(ScreenUtil().setSp(10)),
                   ),
                 ),
                 child: CustomText(
                   text: 'Write a comment...',
                   fontSize: ScreenUtil().setSp(11),
                   color: Colors.grey,
                 ),
               ),
             ],
           ),
           SizedBox(height: ScreenUtil().setHeight(10)),
           CustomText(
             text: 'View all comments',
             fontSize: ScreenUtil().setSp(12),
             fontWeight: FontWeight.bold,
             color: Colors.black,
           ),
         ],
       ),
     ),
   );
 }
}