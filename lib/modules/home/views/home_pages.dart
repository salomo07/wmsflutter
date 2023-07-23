import 'package:flutter/material.dart';

import '../../widgets/BottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff45BCC7),
        title: const Text('BottomNavigationBar Sample'),
      ),
      backgroundColor: Color(0xffF1F2F6),
      bottomNavigationBar:BottomNavBarWidget()
    );
  }
}
