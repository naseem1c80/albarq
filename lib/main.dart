import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// ignore: unused_import
import 'package:naseem/home/index.dart';
import 'package:naseem/splash/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Cairo", primarySwatch: Colors.amber,),
      debugShowCheckedModeBanner: false,
      home: OnboardScreen(), // البداية من صفحة Splash
    );
   /* return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  OnboardScreen(),//PostListPage(),
    );*/
  }
}

/*
      
      FutureBuilder<List<dynamic>>(
        future: _posts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('ddError: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No posts available.'));
          }

          var posts = snapshot.data!;

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(posts[index]['name']),
                subtitle: Text(posts[index]['phone']),
              );
            },
          );
        },
      ),

*/

