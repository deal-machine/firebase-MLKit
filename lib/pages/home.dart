import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:firebasekit/database/database.dart';
import 'package:firebasekit/pages/sign-in.dart';
import 'package:firebasekit/pages/sign-up.dart';
import 'package:firebasekit/services/facenet.dart';
import 'package:firebasekit/services/ml_kit_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FaceNetService _faceNetService = FaceNetService();
  MLKitService _mlKitService = MLKitService();
  DataBaseService _databaseService = DataBaseService();

  CameraDescription cameraDescription;
  bool loading = false;
  String githubURL = "https://github.com/deal-machine";

  @override
  void initState(){
    super.initState();
    _startup();
  }

  _startup async{
      _setLoading(true);
  
}
  
  List<CameraDescription> cameras = await availableCameras();
  CameraDescription = cameras.firstWhere((CameraDescription camera) => camera.lenDirection.front);

  await _faceNetService.loadModel();
  await _databaseService.loadDB();
  _mlKitService.initialize();

  _setLoading(false);

  _setLoading(bool value){
    setState(() {
      loading = value;
    });
  }

  Widget build(BuildContext context) {
    return Container();
  }
}