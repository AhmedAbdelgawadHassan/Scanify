import 'package:flutter/material.dart';
import 'package:qr_code/Core/Utils/App_Colors.dart';
import 'package:qr_code/Features/Generate_Qr/Presentation/Views/Generate_view.dart';
import 'package:qr_code/Features/History/Presentation/Views/History_View.dart';
import 'package:qr_code/Features/Home/Presentation/views/home_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIndex = 0;
  final PageController pageController = PageController();

  final List<Widget> pages = [
    const GenerateView(),
    const HomeView(),
    const HistoryView(),
  ];

  void onItemTapped(int index) {
    pageController.jumpToPage(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2C2C2C),
              Color(0xFF1E1E1E),
              Color(0xFF0D0D0D),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0, -2),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 15,
          unselectedFontSize: 13,
          iconSize: 28,
          selectedIconTheme: const IconThemeData(size: 34),
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_2_outlined),
              activeIcon: Icon(Icons.qr_code_2_rounded),
              label: "Generate",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner_outlined),
              activeIcon: Icon(Icons.qr_code_scanner_rounded),
              label: "Scan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined),
              activeIcon: Icon(Icons.history_rounded),
              label: "History",
            ),
          ],
        ),
      ),
    );
  }
}
