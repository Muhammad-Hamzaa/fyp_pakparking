import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pak_parking/Components/drawer_view.dart';
import 'package:pak_parking/Main_Application/Home_Screens/home_pg.dart';
import 'package:pak_parking/Main_Application/Home_Screens/payment_screen.dart';
import 'package:pak_parking/User/user_profile.dart';
import 'package:pak_parking/User/user_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Components/constant_colors.dart';
import '../Login_Signup/login_screen.dart';

class HomeScreen extends StatefulWidget {
  final String email;
  final String pass;
  static const String id = 'home_screen';
  const HomeScreen({Key? key,
  required  this.email,
    required this.pass
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

final items = const [
 Icons.home_outlined,
 Icons.wallet_outlined,
 Icons.person_outlined,
 Icons.settings_outlined,
];

  final List _pages =  [
    const HomePg1(),
    const PaymentScreen(),
    const UserProfile(),
    const UserSettings(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  String email= '';
  void loadData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email =  sp.getString('email') ?? '';
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        SystemNavigator.pop();
        return true;
      },

      child: Scaffold(
      backgroundColor: AppColors().white,

          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.navigation),
            onPressed: () {  },),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: items,
            activeColor: AppColors().green,
            inactiveColor: AppColors().grey,

            activeIndex: _selectedIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            onTap: (index) => setState(() => _selectedIndex = index),
            //other params
          ),

          drawer: DrawerView(onPress: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
          child: ListView(),),

          body: _pages[_selectedIndex],
      ),
    );
  }
}


