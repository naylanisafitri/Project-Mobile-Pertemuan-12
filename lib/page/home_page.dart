import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// import halaman
import 'list_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // halaman untuk bottom bar
  final List<Widget> _pages = [
    const DashboardPage(),
    const ListPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      // 🔽 SALOMON BOTTOM BAR
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.list),
            title: const Text("List"),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

//
// ================= DASHBOARD (GRID) =================
//

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menu = [
      {
        'title': 'List Pertemuan',
        'icon': Icons.list,
        'color': Colors.blue
      },
      {
        'title': 'Profile',
        'icon': Icons.person,
        'color': Colors.green
      },
    ];

    return Scaffold(
appBar: AppBar(
  title: const Text("Dashboard UTS"),
  centerTitle: true,
  backgroundColor: Colors.blue,

  actions: [
    PopupMenuButton<String>(
      onSelected: (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("$value dipilih"),
          ),
        );
      },
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: "Profil",
          child: Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 10),
              Text("Profil"),
            ],
          ),
        ),
        const PopupMenuItem(
          value: "Pengaturan",
          child: Row(
            children: [
              Icon(Icons.settings),
              SizedBox(width: 10),
              Text("Pengaturan"),
            ],
          ),
        ),
        const PopupMenuItem(
          value: "Bantuan",
          child: Row(
            children: [
              Icon(Icons.help),
              SizedBox(width: 10),
              Text("Bantuan"),
            ],
          ),
        ),
        const PopupMenuItem(
          value: "Log Out",
          child: Row(
            children: [
              Icon(Icons.logout),
              SizedBox(width: 10),
              Text("Log Out"),
            ],
          ),
        ),
      ],
    ),
  ],
),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: menu.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                String title = menu[index]['title'];

                // 🔥 NAVIGASI DARI GRID
                if (title == 'List Pertemuan') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListPage(),
                    ),
                  );
                } else if (title == 'Profile') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 5)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      menu[index]['icon'],
                      size: 60,
                      color: menu[index]['color'],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      menu[index]['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}