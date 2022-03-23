import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomePage(),));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('STUDENTS'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('3.jpg',height: 40.0,),
                      title: Text('Elsa'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Student1()),
                        );
                      },
                    ),
                    Divider(height: 2.5),
                    ListTile(
                      leading: Image.asset('1.jpg',height: 40.0,),
                      title: Text('Ali'),
                      onTap: () {Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const Student2()),
                      );
                      },
                    ),
                    Divider(height: 2.5),
                    ListTile(
                      leading: Image.asset('4.jpg',height: 40.0,),
                      title: Text('Dens'),
                      onTap: () {Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const Student3()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class Student1 extends StatelessWidget {
  const Student1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back to list'),
      ),
      body: Center(
        child: ListView(
          children: [
            //CircleAvatar(backgroundImage: AssetImage('g1.jpg'), radius: 150),
            Image.asset('3.jpg'),
            Divider(height: 50.0),
            Container(
              alignment: Alignment.center,
              child: Text('Elsa',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Class: SYBCA\n\nRoll Number: 124',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}

class Student2 extends StatelessWidget {
  const Student2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back to list'),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset('1.jpg'),//, height: 120.0),
            Divider(height: 50.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Ali',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Class: FYBCA\n\nRoll Number: 372',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}

class Student3 extends StatelessWidget {
  const Student3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back to list'),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset('4.jpg'),// height: 120.0,),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Dens',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Class: TYBCA\n\nRoll Number: 182',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}