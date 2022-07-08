import 'package:flutter/material.dart';
import 'package:flutter_model_viewer/flutter_model_viewer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String src1 = 'https://boxdev.ru/testThing1.glb';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AR app'),
        ),
        body: Column(
          children: const [
            SizedBox(
              height: 400,
              child: ModelViewer(
                src: src1,
                autoRotate: false,
                rotationPerSecond: "50deg",
                autoRotateDelay: 500,
                cameraControls: true,
                openCache: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
