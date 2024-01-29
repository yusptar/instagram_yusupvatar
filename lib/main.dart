import 'package:flutter/material.dart';
import 'core/values/constant/post_json.dart';
import 'app/modules/home/home_page.dart';
import 'app/modules/login/login_page.dart';
import 'core/values/constant/profile_json.dart';
import 'core/values/constant/story_json.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) =>
            HomePage(posts: posts, stories: stories, profileData: profileJson)
      },
    );
  }
}
