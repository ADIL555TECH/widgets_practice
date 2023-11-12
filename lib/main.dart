import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(40),
      child:Column(
        children:[
          Text(
            'Here you can make an order!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10.0),
          ContentWidget(),
          SizedBox(height: 10.0),
          FooterWidget(),
        ],
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87, width: 3),
        borderRadius: BorderRadius.circular(15),),
      padding: EdgeInsets.all(16.0),
      child:Column(
        children: [
          Text(
            'In our menu you can find any cuisine from all around the world!',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            ' 1.Chef’s Table \n 2. Mezzaluna \n 3. Saneh Jaan \n 4. 32 Day Dry Aged Topside Beef \n 5. Vegan Lentil and Mushroom Wellington VVG  ',

            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class FooterWidget extends StatefulWidget {
  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  int buttonClicks = 0;

  void _incrementButtonClicks() {
    setState(() {
      buttonClicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87, width: 3),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Add to Cart',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: _incrementButtonClicks,
            child: Text('Cuisine 1'),
          ),
          ElevatedButton(
            onPressed: _incrementButtonClicks,
            child: Text('Cuisine 2'),
          ),
          ElevatedButton(
            onPressed: _incrementButtonClicks,
            child: Text('Cuisine 3'),
          ),
          ElevatedButton(
            onPressed: _incrementButtonClicks,
            child: Text('Cuisine 4'),
          ),
          ElevatedButton(
            onPressed: _incrementButtonClicks,
            child: Text('Cuisine 5'),
          ),
          SizedBox(height: 10.0),
          Text(
            'Items in the cart: $buttonClicks',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Barvikha Restaurant!'),
        ),
        body: HeaderWidget(),
      ),
    );
  }
}
