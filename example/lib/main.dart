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
  ModelViewController rotateController = new ModelViewController();

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
          children:  [
            SizedBox(
              height: 400,
              child: ModelViewer(
                backgroundColor: Colors.white,
                modelViewController:rotateController,
                src: src1,
                autoRotate: false,
                rotationPerSecond: "50deg",
                autoRotateDelay: 500,
                cameraControls: false,
                openCache: false,
                onError: (){
                  debugPrint('error load 3d model');
                },
                // src: src1,
                // autoRotate: false,
                // rotationPerSecond: "50deg",
                // autoRotateDelay: 500,
                // cameraControls: true,
                // openCache: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
