//import 'package:fluttter/material.dart';
//
//class ChooseLocation extends StatefulWidget {
//  @override
//  _ChooseLocationState createState() => _ChooseLocationState();
//}
//
//class _ChooseLocationState extends State<ChooseLocation> {
//
//  void getData() async {
//
//    // simulate network request for a username
//    String username = await Future.delayed(Duration(seconds: 3), () {
//      return 'yoshi';
//    });
//
//    // simulate network request to get boi of the username
//     String bio = await Future.delayed(Duration(seconds: 2), () {
//      print('vegan, musician & egg collector');
//    });
//
//    print('$username - $bio');
//
//  }
//
//  @override void initState() {
//    super.initState();
//    getData();
//    print('hey there!');
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    print('build function ran');
//    return Scaffold(
//      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//        backgroundColor: Colors.blue[900],
//        title: Text('Choose a Location'),
//        centerTitle: true,
//        elevation: 0,
//      ),
//      body: Text('choose location screen'),
//    );
//  }
//}