import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/DetailsPage.dart';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const InputPage(),
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      // Other configurations
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController regNumController = TextEditingController();
  TextEditingController messNumController = TextEditingController();
  TextEditingController messNameController = TextEditingController();

  File? _image;
  SharedPreferences? prefs;

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs!.getString('name') ?? '';
      regNumController.text = prefs!.getString('regNum') ?? '';
      messNumController.text = prefs!.getString('messNum') ?? '';
      messNameController.text = prefs!.getString('messName') ?? '';
    });
  }

  Future getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details',
        
        textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                prefs!.setString('name', value);
              },
            ),
            TextField(
              controller: regNumController,
              decoration: const InputDecoration(labelText: 'Registration Number'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                prefs!.setString('regNum', value);
              },
            ),
            TextField(
              controller: messNumController,
              decoration: const InputDecoration(labelText: 'Mess Type'),
              // keyboardType: TextInputType.text,
              onChanged: (value) {
                prefs!.setString('messNum', value);
              },
            ),
            TextField(
              controller: messNameController,
              decoration: const InputDecoration(labelText: 'Hostel '),
              onChanged: (value) {
                prefs!.setString('messName', value);
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: getImage,
              child: const Text('Pick Image'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      name: nameController.text,
                      regNum: regNumController.text,
                      messNum: messNumController.text,
                      messName: messNameController.text,
                      image: _image,
                    ),
                  ),
                );
              },
              child: const Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
