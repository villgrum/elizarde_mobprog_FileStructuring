import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/constant.dart';
import 'package:elizarde_mobprog/screens/newsfeed_screen.dart';
import 'package:elizarde_mobprog/screens/notification_screen.dart';
import 'package:elizarde_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: 'Facebook',
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex == 2 ? 1 : 0,
        children: const [NewsfeedScreen(), NotificationScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 0 || index == 2) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Groups'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: fbPrimary,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
