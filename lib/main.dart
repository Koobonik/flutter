import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


// 코스테스 쿠폰북

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    '사장님의 한마디 라인',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '카테고리',
                  style: TextStyle(
                    //color: Colors.grey[500],
                    fontSize: 20,
                    fontWeight: FontWeight.bold
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
    //Color color = Theme.of(context).primaryColor;
    Color brown = Colors.brown[500];
    changeColor(){
        Text("clicked");
        print("he");
    }
    // RaisedButton.icon(onPressed: null, icon: null, label: null);
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.local_cafe),
                      Text("Espresso"),
                      ],
                    ),
          ),
          
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.local_drink),
                      Text("Tea & Smoothie"),
                      ],
                    ),
          ),

          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.cloud),
                      Text("Bread"),
                      ],
                    ),
          ),


          //_buildButtonColumn(brown , Icons.local_cafe, 'Espresso'),
          
        ],
      ),
    );

    Widget buttonSection2 = Container(
      padding: const EdgeInsets.all(5),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.fastfood),
                      Text("Lunch"),
                      ],
                    ),
          ),
          
          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.aspect_ratio),
                      Text("Tea & Smoothie"),
                      ],
                    ),
          ),

          new RaisedButton(
            padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: brown,
                    onPressed: changeColor,
                    child: Column(
                      children: <Widget>[
                      Icon(Icons.cloud),
                      Text("Bread"),
                      ],
                    ),
          ),


          //_buildButtonColumn(brown , Icons.local_cafe, 'Espresso'),
          
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
          // 뷰들 에드시켜서 올리는 곳
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