import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ARCoreScreen extends StatefulWidget {
  @override
  _ARCoreScreenState createState() => _ARCoreScreenState();
}

class _ARCoreScreenState extends State<ARCoreScreen> {
  ARSessionManager? arSessionManager;
  ARObjectManager? arObjectManager;

  @override
  void dispose() {
    // Clean up AR session and object managers to prevent memory leaks
    arSessionManager?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Try-On'),
      ),
      body: ARView(
        onARViewCreated: _onARViewCreated,  // Initialize AR session
      ),
    );
  }

  // Corrected callback signature
  void _onARViewCreated(
      ARSessionManager sessionManager,
      ARObjectManager objectManager,
      ARAnchorManager anchorManager,
      ARLocationManager locationManager) {
    arSessionManager = sessionManager;
    arObjectManager = objectManager;

    // Initialize AR session with some basic configurations
    arSessionManager?.onInitialize(
      showFeaturePoints: false,
      showPlanes: true,
      customPlaneTexturePath: "Images/triangle.png",  // Optional, adjust based on your assets
      showWorldOrigin: true,
    );

    arObjectManager?.onInitialize();
    _addSphere();  // Add AR object to the scene
  }

  // Function to add a red sphere to the AR view
  void _addSphere() async {
    final material = ARMaterial(
      color: Colors.red,  // Set the color of the sphere
    );
    final sphere = ARSphere(
      materials: [material],
      radius: 0.1,  // Define the size of the sphere
    );

    // Create an AR node with the sphere
    final node = ARNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1),  // Place the sphere 1 meter in front of the camera
    );

    // Add the node to the AR scene
    await arObjectManager?.addNode(node);
  }
}
