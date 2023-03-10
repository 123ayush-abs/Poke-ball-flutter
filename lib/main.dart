import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Pokemon(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Pokemon extends StatefulWidget {
  const Pokemon({super.key});

  @override
  State<Pokemon> createState() => _PokemonState();
}

class _PokemonState extends State<Pokemon> {
  var name = "Gigli Pup";
  var powers = "Invisiblity, Cannon ball, Speed";
  var ratio = "Power:100%, Stamina:80%";
  var linkk = 'https://assets.stickpng.com/thumbs/585965ad4f6ae202fedf286e.png';
  var counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          "Poke-Ball",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'd1',
            letterSpacing: 2.0,
            fontWeight: FontWeight.w900,
            color: Colors.orangeAccent[200],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 3.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 30.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage('$linkk'),
                radius: 57.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Pokemon Name:-",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Colors.yellowAccent[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$name",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Pokemon Powers:-",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Colors.yellowAccent[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$powers",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Strength Levels:-",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
                color: Colors.yellowAccent[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$ratio",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c31f.png'),
                backgroundColor: Colors.transparent,
                radius: 40.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
            name = "Bulbazod";
            powers = "Speed, Water, Roots";
            ratio = "Power:100%, Speed:90%";
            linkk =
                'https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c31a.png';
            if (counter == 2) {
              name = "Charizard";
              powers = "Speed, Fire, Muscular";
              ratio = "Power:100%, Speed:100%";
              linkk =
                  'https://assets.stickpng.com/thumbs/5859662e4f6ae202fedf2878.png';
            }
          });
        },
        child: Icon(
          Icons.arrow_forward_ios,
          size: 20.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.grey[400],
      ),
    );
  }
}
