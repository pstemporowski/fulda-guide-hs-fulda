
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';


class ModelView extends StatelessWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //src: "lib/assets/Mensa.glb"
    return Scaffold(
      appBar: AppBar(title: Text("Model Viewer")),
      body: ModelViewer(
        src: 'lib/assets/Mensa3.glb',
        alt: "A 3D model of an astronaut",
        autoRotate: false,
        cameraControls: false,
        ar: true,
        arScale: ArScale.auto,
        arPlacement: ArPlacement.floor,
        arModes: ['scene-viewer', 'webxr', 'quick-look'],
        backgroundColor: Colors.transparent,
        cameraOrbit: "0deg 90deg 100",
        autoPlay: true,
      ),
    );
  }

}
