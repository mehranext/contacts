import 'package:contacts/screens/add_edit_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppEditScreen(),
              ));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          'دفترچه تلفن آنلاین',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        leading: const Icon(Icons.import_contacts_sharp),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          )
        ],
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
              title: const Text('Hello'),
              subtitle: const Text('0915'),
            );
          }),
    );
  }
}
