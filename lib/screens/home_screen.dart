import 'package:elizarde_mobprog/screens/notification_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/constant.dart';
import 'package:elizarde_mobprog/screens/newsfeed_screen.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';
class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});
 @override
 State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
 int _selectedIndex = 0;
 final PageController _pageController = PageController();
 final List<String> _appBarTitles = [
   'Combvill',
   'Friends',
   'Notifications',
   'Profile',
 ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       shadowColor: fbTextColorWhite,
       elevation: 2,
       title: CustomText(
         text: _appBarTitles[_selectedIndex],
         fontSize: ScreenUtil().setSp(25),
         color: fbPrimary,
         fontFamily: 'Klavika',
         fontWeight: FontWeight.w700,
       ),
     ),
     body: PageView(
       controller: _pageController,
       children: const <Widget>[
         NewsfeedScreen(),
         Center(child: Text('Friends Screen')),
         NotificationScreen(),
         Center(child: Text('Profile Screen')),
       ],
       onPageChanged: (page) {
         setState(() {
           _selectedIndex = page;
         });
       },
     ),
     bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.grey,
      onTap: _onTappedBar,
       items: const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.people),
           label: 'Friends',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.notifications),
           label: 'Notifications',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           label: 'Profile',
         ),
       ],
       selectedItemColor: fbPrimary,
       currentIndex: _selectedIndex,
     ),
   );
 }
 void _onTappedBar(int value) {
   setState(() {
     _selectedIndex = value;
   });
   _pageController.jumpToPage(value);
 }
}