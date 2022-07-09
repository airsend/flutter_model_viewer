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
  static const String src1 = 'https://firebasestorage.googleapis.com/v0/b/ar-app-eb45e.appspot.com/o/products%2F-N4Ooph2Nt6aCPEt4NQE%2FtestThing1.glb?alt=media&token=64c507e9-7903-48fc-8ee6-727a7285f55c';
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
