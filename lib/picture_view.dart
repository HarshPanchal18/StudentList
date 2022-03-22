/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title), backgroundColor: Colors.orange,),
        //body: const MyStatefulWidget(),
        body :Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Text Demo"),
              SizedBox(height: 50.0,),
              RaisedButton(onPressed: (){
                /*Navigator.push(context,
                    MaterialPageRoute(
                        builder: (builder) => ButtonDemo()
                    )
                );*/

              },
                child: Text("Button Demo"),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                  onPressed: () => {
                    Navigator.pop(context) // redirect to back page
                  },
                  color: Colors.red,
                  child: Text("back")
              )
            ],
          ),
        ),
      ),
    );
  }

/*
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <Widget>[
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue,),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
      ],
    );
  }
}*/
}

*/

import 'package:flutter/material.dart';
//import 'package:sdjic_flutter/buttondemo.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Text Demo"),
            SizedBox(height: 50.0,),
            /*RaisedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (builder) => ButtonDemo()
                  )
              );
            },
              child: Text("Button Demo"),
            ),*/
            SizedBox(height: 20.0,),
            RaisedButton(
                onPressed: () => {
                  Navigator.pop(context) // redirect to back page
                },
                color: Colors.red,
                child: Text("back")
            )
          ],
        ),
      ),
    );
  }
}
