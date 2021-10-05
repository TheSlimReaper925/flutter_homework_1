import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animals app',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image =
      "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/12/03202400/Yellow-Labrador-Retriever.jpg";

  changePicture(String image) {
    setState(() {
      this.image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(image);
    return Scaffold(
      appBar: AppBar(title: Text('Animals')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(image),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => changePicture(
                        "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2019/12/03202400/Yellow-Labrador-Retriever.jpg"),
                    child: Text("Dog")),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                ),
                ElevatedButton(
                    onPressed: () => changePicture(
                        "https://www.aljazeera.com/wp-content/uploads/2020/04/ecab8c7af42a439d9043b0ade6e1f05b_18.jpeg?fit=999%2C562"),
                    child: Text("Cat"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => changePicture(
                        "https://cdn.mos.cms.futurecdn.net/S62tKo2WjJ8NfU4bPX9GvU-1200-80.jpg"),
                    child: Text("hamster")),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                ),
                ElevatedButton(
                    onPressed: () => changePicture(
                        "https://www.torontozoo.com/img/1200/20180605032116763AfricanLion.jpg"),
                    child: Text("Lion"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
