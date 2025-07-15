import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Ninja()

  ));
}

class Ninja extends StatefulWidget {
 
  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],

      ),
      floatingActionButton: FloatingActionButton( //when i click floating button then only count increases
        onPressed: () {
          setState(() {
            count+=1;
          });

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20,30, 0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assest/image.jpg'),
                radius: 50,
              ),
            ),
            Divider(height: 20, thickness: 5, color: Colors.grey[600]),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                fontSize: 20
              ),
            ),
            SizedBox(height: 6),
            Text(
              "Sephy Jithin",
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2,
                fontSize: 30
              ),
            ),
            SizedBox(height: 30),
             Text(
              "Current Ninja Level ",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                fontSize: 20
              ),
            ),
            SizedBox(height: 6),
            Text(
              "$count",
              style: TextStyle(
                color: const Color.fromARGB(255, 224, 205, 146),
                letterSpacing: 2,
                fontSize: 30
              ),
            ),
            SizedBox(height: 30,),
            Row(

              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'sephyjithin@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20,
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
