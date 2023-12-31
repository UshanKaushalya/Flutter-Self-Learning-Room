import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.blue,
        toolbarHeight: 60,
      ),
      // body: Container(
      //   color: Colors.red,
      //   width: double.infinity,
      //   child: const Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text('Text 1', style: (TextStyle(fontSize: 20)),),
      //       Text('Text 2', style: (TextStyle(fontSize: 20)),),
      //       Text('Text 3', style: (TextStyle(fontSize: 20)),),
      //     ],
      //   ),
      // ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: 100,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Text 1', style: (TextStyle(fontSize: 20)),),
            Text('Text 2', style: (TextStyle(fontSize: 20)),),
            Text('Text 3', style: (TextStyle(fontSize: 20)),),
          ],
        ),
      ),
    );
  }
}
