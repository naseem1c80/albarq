import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naseem/widgets/tem.dart';

class CustomToolbar extends StatelessWidget{//} implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Directionality(textDirection: TextDirection.rtl, child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
          
            // Logo and Title
            Row(
              children: [
                Container(
   
   // backgroundColor: Colors.transparent,
    child:Image.asset(
                  'assets/svg/delivery.png', // بدل هذا بالمسار الصحيح لشعار "وصل"
                 width: 42,
              
                )),
                const SizedBox(width: 6),
                const Text(
                  'البرق',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            // Currency and Heart icon
            Row(
              children: [
             
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 224, 224),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'YR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                 const SizedBox(width: 8),
                    Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 221, 221),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.favorite, color: primaryColor),
                ),
                  const SizedBox(width: 8),
                    Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 224, 221, 221),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:  SvgPicture.asset(
      'assets/svg/YJItug01.svg',
      width: 44,
      height: 40,
    
  )),
              ],
            ),
           
          ],
        ),
      ),
    ));
  }

  Size get preferredSize => const Size.fromHeight(70);
}
