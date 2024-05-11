import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 200, 0.5), // Adjust opacity to 0.5
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Handle item selection
                print('Item $index selected');
              },
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFdcb0ff),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Color(0xFFf0f2f9),
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              color: Color(0xFFf0f2f9),
            ),
          ],
        ),
      ),
    );
  }
}
