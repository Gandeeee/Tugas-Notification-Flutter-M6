// Nama: Kadek Gandhi Wahyu Jaya Suastika
// NIM: 1202230017
// Tugas: Modul 6 Notification

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp11_1()); // Aplikasi dimulai dari Navigasi PageView (Modul 6)
}

// --- BAGIAN MODUL 6: PAGEVIEW & NAVIGATION ---

class MyApp11_1 extends StatelessWidget {
  const MyApp11_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APB Gandhi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'APB'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selected = 0;
  PageController pc = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: pc,
          onPageChanged: (index) {
            setState(() {
              selected = index;
            });
          },
          children: [
            Center(
              child: InkWell(
                child: const Text(
                  'Go to Home page',
                  style: TextStyle(fontSize: 30),
                ),
                onTap: () {
                  // Navigasi ke Halaman Modul 5 yang ada di bawah
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Modul5Page()),
                  );
                },
              ),
            ),
            const Center(
              child: Text(
                'Email page',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Center(
              child: Text(
                'Profile page',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
          });
          pc.animateToPage(
            index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// --- BAGIAN MODUL 5: USER INTERACTION (CREATE & READ) --

class Modul5Page extends StatefulWidget {
  const Modul5Page({super.key});

  @override
  State<Modul5Page> createState() => _Modul5PageState();
}

class _Modul5PageState extends State<Modul5Page> {
  List<Map<String, dynamic>> data = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _langController = TextEditingController();
  String _selectedColor = 'Biru';

  @override
  void initState() {
    super.initState();
    data = [
      {"name": "Native App", "lang": "Java, Kotlin, Swift", "color": Colors.blue},
      {"name": "Hybrid App", "lang": "Javascript, Dart", "color": Colors.green},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1202230017 - User Interaction"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: data[index]['color']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['lang']),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(data[index]['name']),
                    content: Text("Platform ini menggunakan bahasa: ${data[index]['lang']}"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Ingin menambah data baru?"),
              action: SnackBarAction(
                label: "Add",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Text("Tambah Teknologi Baru"),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(labelText: "Nama Platform"),
                          ),
                          TextFormField(
                            controller: _langController,
                            decoration: const InputDecoration(labelText: "Bahasa Pemrograman"),
                          ),
                          DropdownButtonFormField<String>(
                            value: _selectedColor,
                            items: const [
                              DropdownMenuItem(value: 'Biru', child: Text("Biru")),
                              DropdownMenuItem(value: 'Hijau', child: Text("Hijau")),
                              DropdownMenuItem(value: 'Merah', child: Text("Merah")),
                            ],
                            onChanged: (value) => setState(() => _selectedColor = value!),
                            decoration: const InputDecoration(labelText: "Warna Label"),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Color colorToSave = Colors.blue;
                                if (_selectedColor == 'Hijau') colorToSave = Colors.green;
                                if (_selectedColor == 'Merah') colorToSave = Colors.red;

                                data.add({
                                  "name": _nameController.text,
                                  "lang": _langController.text,
                                  "color": colorToSave,
                                });
                              });
                              _nameController.clear();
                              _langController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("Save"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}