import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomePage(),));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset('stud.jpg'),
          backgroundColor: Colors.orange,
          title: const Text('STUDENT LIST'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('g1.jpg',height: 40.0,),
                      title: Text('Lawrens'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Stud1()),
                        );
                      },
                    ),
                    Divider(height: 2.5),
                    ListTile(
                      leading: Image.asset('g3.webp',height: 40.0,),
                      title: Text('Romero'),
                      onTap: () {Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const Stud2()),
                        );
                      },
                    ),
                    Divider(height: 2.5),
                    ListTile(
                      leading: Image.asset('b1.jpg',height: 40.0,),
                      title: Text('Marshall'),
                      onTap: () {Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const Stud3()),
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

class Stud1 extends StatelessWidget {
  const Stud1({Key? key}) : super(key: key);

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
            Image.asset('g1.jpg'),
            Divider(height: 50.0),
            Container(
              alignment: Alignment.center,
              child: Text('Lawrens',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Class: 5th\n\nRoll Number: 19',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}


class Stud2 extends StatelessWidget {
  const Stud2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back to list'),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset('g3.webp'),//, height: 120.0),
            Divider(height: 50.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Romero',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Class: 11th\n\nRoll Number: 36',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}

class Stud3 extends StatelessWidget {
  const Stud3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go back to list'),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset('b1.jpg'),// height: 120.0,),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text('Marshall Mick',
                style:TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
            ),
            Divider(height: 30.0,),
            Container(
              alignment: Alignment.center,
              child: Text(
                  'Class: 7th\n\nRoll Number: 54',textAlign:TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}