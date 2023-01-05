
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';


class ModelView extends StatelessWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //src: "lib/assets/Mensa.glb"
    return Scaffold(
      appBar: AppBar(title: Text("Model Viewer")),
      body: ModelViewer(src: 'lib/assets/Mensa.glb',
        alt: "A 3D model of an astronaut",
        autoRotate: true,
        disableZoom: true,
        cameraControls: true,
        autoPlay: true,
      ),
    );
  }
}
