import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:naseem/home/home.dart';
import 'package:naseem/home/maps.dart';
import 'package:naseem/home/orders.dart';
import 'package:naseem/home/profile.dart';
import 'package:naseem/widgets/CustomToolbar.dart';
import 'package:naseem/widgets/tem.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
 _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //late ApiService _apiService;
  int selectedIndex = 0;
  int badge = 0;
  final padding = EdgeInsets.symmetric(horizontal: 18, vertical: 12);
  double gap = 10;
  PageController controller = PageController();

  List<Color> colors = [
    primaryColor,
    Colors.pink,
    Colors.amber[600]!,
    Colors.teal
  ];

final List _Pages=[
HomePage(),
OrdersPage(),
MapPage(),
ProfilePage(),
];
  @override
  void initState() {
    super.initState();
   // _apiService = ApiService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 255, 255, 255),
     // appBar:  CustomToolbar(),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomToolbar(),
      Expanded(
          child: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
              badge = badge + 1;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return _Pages[position]  /*Container(
              color: colors[position],
            )*/;
          },
          itemCount: 4,
        )),
      ],) ,
      




   bottomNavigationBar: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                 
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(.4),
                  offset: Offset(0, 25),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
              child: GNav(
                tabs: [


GButton(
  gap: gap,
  iconActiveColor: whiteColor,
  iconColor: Colors.black,
  textColor: primaryColor,
  backgroundColor: primaryColor.withOpacity(.2),
  iconSize: 24,
  padding: padding,
  icon: LineIcons.home,
  leading: CircleAvatar(
    radius: 12,
    backgroundColor: Colors.transparent,
    child: SvgPicture.asset(
      'assets/svg/Home Outlined.svg',
      width: 84,
      height: 84,
    ),
  ),
  text: 'الرئيسية',
),

        
                  GButton(
                    gap: gap,
                    iconActiveColor: whiteColor,
                    iconColor: Colors.black,
                    textColor: whiteColor,
                    backgroundColor: primaryColor,
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.thList,
                    text: 'Orders ${controller.initialPage}',
                    
  leading: CircleAvatar(
    radius: 12,
    backgroundColor: Colors.transparent,
    child: SvgPicture.asset(
      'assets/svg/cart-svgrepo-com.svg',
      width: 84,
      height: 84,
    ),
  ),
                  ),

                  
                      GButton(
                    gap: gap,
                    iconActiveColor: whiteColor,
                    iconColor: Colors.black,
                     textColor: whiteColor,
                    backgroundColor: primaryColor,
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.history,
                 
  leading: CircleAvatar(
    radius: 12,
    backgroundColor: Colors.transparent,
    child: SvgPicture.asset(
      'assets/svg/history-svgrepo-com.svg',
      width: 84,
      height: 84,
    ),
  ),
                    text: 'history',
                  ),

                  
                   GButton(
                    gap: gap,
                    iconActiveColor: whiteColor,
                    iconColor: Colors.black,
                   textColor: whiteColor,
                    backgroundColor: primaryColor,
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.userAlt,
                     leading: CircleAvatar(
    radius: 12,
    backgroundColor: Colors.transparent,
    child: SvgPicture.asset(
      'assets/svg/Users Outlined.svg',
      width: 84,
      height: 84,
    ),
  ),
                    text: 'profile',
                  ),
              

                 /* GButton(
                    gap: gap,
                    iconActiveColor: Colors.teal,
                    iconColor: Colors.black,
           textColor: whiteColor,
                    backgroundColor: primaryColor,
                    iconSize: 24,
                    padding: padding,
                    icon: LineIcons.user,
                    leading: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                        'https://sooxt98.space/content/images/size/w100/2019/01/profile.png',
                      ),
                    ),
                    text: 'Sheldon',
                  )*/
                ],
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                  controller.jumpToPage(index);
                },
              ),
            ),
          ),
        ),
      

    );
  }
}



