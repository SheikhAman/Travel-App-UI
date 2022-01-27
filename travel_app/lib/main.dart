import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.extension),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 37,
            ),
            const Text.rich(
              TextSpan(
                  text: 'Welcome,',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: ' Charlie',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Saved Places',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                childAspectRatio: 1.491,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  for (var country in countries)
                    Image.asset('assets/$country.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
