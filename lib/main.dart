// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //final wordPair = WordPair.random();
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       theme: new ThemeData(          // Add the 3 lines from here... 
//         primaryColor: Colors.brown,
//       ),                             // ... to here.
//       home: RandomWords(),
//     );
//   }

  
// }

// class RandomWordsState extends State<RandomWords> {
//   // TODO Add build() method
//   final List<WordPair> _suggestions = <WordPair>[];
//   final Set<WordPair> _saved = new Set<WordPair>();   // Add this line.
//   final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//   //final _suggestions = <WordPair>[];
//   //final _biggerFont = const TextStyle(fontSize: 18.0);

  
  
//   Widget _buildRow(WordPair pair) {
//   final bool alreadySaved = _saved.contains(pair);  // Add this line.
//   return new ListTile(
//     title: new Text(
//       pair.asPascalCase,
//       style: _biggerFont,
//     ),
//     trailing: new Icon(   // Add the lines from here... 
//       alreadySaved ? Icons.favorite : Icons.favorite_border,
//       color: alreadySaved ? Colors.red : null,
//     ),
//      onTap: () {      // Add 9 lines from here...
//       setState(() {
//         if (alreadySaved) {
//           _saved.remove(pair);
//         } else { 
//           _saved.add(pair); 
//         } 
//       });
//     },               // ..                   // ... to here.
//   );
// }

//   Widget _buildSuggestions() {
//   return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: /*1*/ (context, i) {
//         if (i.isOdd) return Divider(); /*2*/

//         final index = i ~/ 2; /*3*/
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10)); /*4*/
//         }
//         return _buildRow(_suggestions[index]);
//       });
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(
//       new MaterialPageRoute<void>(   // Add 20 lines from here...
//       builder: (BuildContext context) {
//         final Iterable<ListTile> tiles = _saved.map(
//           (WordPair pair) {
//             return new ListTile(
//               title: new Text(
//                 pair.asPascalCase,
//                 style: _biggerFont,
//               ),
//             );
//           },
//         );
//         final List<Widget> divided = ListTile
//           .divideTiles(
//             context: context,
//             tiles: tiles,
//           )
//           .toList();
//           return new Scaffold(         // Add 6 lines from here...
//           appBar: new AppBar(
//             title: const Text('Saved Suggestions'),
//           ),
//           body: new ListView(children: divided),
//         );                           // ... to here.
//       },
//     ),                           // ... to here.
//     );
//   }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('코스테스 쿠폰북'),
//       actions: <Widget>[      // Add 3 lines from here...
//           new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
//         ],                      // ... to here.
//     ),
//     body: _buildSuggestions(),
//   );
// }

  
// }
// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => new RandomWordsState();
// }

// 코스테스 쿠폰북

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 버튼아래로 패딩
        children: [
          _buildButtonColumn(Colors.brown[500] , Icons.local_cafe, 'Espresso'),
          _buildButtonColumn(Colors.brown[500] , Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.brown[500] , Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.brown[500] , Icons.local_cafe, 'Espresso'),
          _buildButtonColumn(Colors.brown[500] , Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.brown[500] , Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      theme: new ThemeData(          // Add the 3 lines from here... 
         primaryColor: Colors.brown, // 앱 바의 배경 컬러 설정
       ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('코스테스 쿠폰북'),
        ),
        body: ListView(
          children: [
            
            titleSection,
            buttonSection,
            buttonSection2,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}