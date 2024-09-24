import 'package:flutter/material.dart';
import 'package:movies/user.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Chỉ mục của tab hiện tại

  // Danh sách các màn hình khác nhau khi chọn các tab
  final List<Widget> _children = [
    const HomeScreen(),
    const MovieScreen(),
    const SearchScreen(),
    const PersonScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index; // Cập nhật chỉ mục khi tab được chọn
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Tab Bar'),
      ),
      body: _children[_currentIndex], // Hiển thị màn hình theo chỉ mục
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // Sự kiện khi tab được chọn
        currentIndex: _currentIndex, // Chỉ mục hiện tại
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}

// Màn hình cho các tab khác nhau
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen'),
    );
  }
}

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Movie Screen'),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Screen'),
    );
  }
}

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserScreen(),
    );
  }
}