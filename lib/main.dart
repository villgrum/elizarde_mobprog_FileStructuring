import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:elizarde_mobprog/screens/home_screen.dart';
import 'package:elizarde_mobprog/screens/newsfeed_screen.dart';
import 'package:elizarde_mobprog/screens/notification_screen.dart';
import 'package:material_ui/material_ui.dart';
void main() {
 runApp(const MainApp());
}
class MainApp extends StatelessWidget {
 const MainApp({super.key});
 @override
 Widget build(BuildContext context) {
   return ScreenUtilInit(
     designSize: const Size(412, 715),
     minTextAdapt: true,
     splitScreenMode: true,
     builder: (_, child) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Combvill',
         initialRoute: '/home',
         routes: {
           '/home': (context) => const HomeScreen(),
           '/newsfeed': (context) => const NewsfeedScreen(),
           '/notifications': (context) => const NotificationScreen(),
         },
       );
     },
   );
 }
}