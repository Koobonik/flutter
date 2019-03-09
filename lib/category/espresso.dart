import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(Espresso());

class Espresso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(          // Add the 3 lines from here... 
        primaryColor: Colors.brown,
      ),                             // ... to here.
      home: RandomWords(),
    );
  }

  
}

class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();   // Add this line.
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  //final _suggestions = <WordPair>[];
  //final _biggerFont = const TextStyle(fontSize: 18.0);

  
  
  Widget _buildRow(WordPair pair) {
  final bool alreadySaved = _saved.contains(pair);  // Add this line.
  return new ListTile(
    title: new Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
    trailing: new Icon(   // Add the lines from here... 
      alreadySaved ? Icons.favorite : Icons.favorite_border,// 눌렸을때 하트모양과 다시 눌렀을 경우의 하트모양
      color: alreadySaved ? Colors.red : null,
    ),
     onTap: () {      // Add 9 lines from here... 하트를 눌렀을경우 반응하는 것들
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
      });
    },               // ..                   // ... to here.
  );
}

  Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(   // Add 20 lines from here...
      builder: (BuildContext context) {
        final Iterable<ListTile> tiles = _saved.map(
          (WordPair pair) {
            return new ListTile(
              title: new Text(
                pair.asPascalCase,
                style: _biggerFont,
              ),
            );
          },
        );
        final List<Widget> divided = ListTile
          .divideTiles(
            context: context,
            tiles: tiles,
          )
          .toList();
          return new Scaffold(         // Add 6 lines from here...
          appBar: new AppBar(
            title: const Text('Saved Suggestions'),
          ),
          body: new ListView(children: divided),
        );                           // ... to here.
      },
    ),                           // ... to here.
    );
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('코스테스 쿠폰북'),
      actions: <Widget>[      // Add 3 lines from here...
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
        ],                      // ... to here.
    ),
    body: _buildSuggestions(),
  );
}

  
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}