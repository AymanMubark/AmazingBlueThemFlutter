import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key key}) : super(key: key);

  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #1'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/city.jpg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Order # 1', style: TextStyle(fontSize: 16)),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        width: 60,
                        height: 30,
                        child: Center(
                          child: Text(
                            'New',
                            style: TextStyle(
                                backgroundColor: Colors.blue,
                                fontSize: 16,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    child: Text('.'),
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'From 6 Month',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildDetailsRow(
                      Icons.date_range, 'I wanted before - ', '5 month'),
                  SizedBox(
                    height: 15,
                  ),
                  buildDetailsRow(Icons.settings, 'Order Type - ', 'Phone'),
                  SizedBox(
                    height: 15,
                  ),
                  buildDetailsRow(Icons.shopping_basket, 'Qunatity - ', '1'),
                  SizedBox(
                    height: 15,
                  ),
                  buildDetailsRow(Icons.place, 'From - ', 'UK'),
                  SizedBox(
                    height: 15,
                  ),
                  buildDetailsRow(Icons.local_grocery_store, 'To - ', 'SD'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue[100],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        buildDetailsRow(Icons.credit_card, 'I Will Pay', ''),
                        Text(
                          '500 \$',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        'This price is suggested by the customer \n you can set the price that suits you',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(),
                  buildDetailsRow(Icons.comment, ' 0 Comments', '')
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 200,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Applicant',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CircleAvatar(
                            radius: 30,
                            foregroundColor: Colors.white,
                            child: Image.asset('assets/images/man.png'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Ayman Mubarak Ahmed',
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Text(
                            '3 Rate',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Request',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '3 Request',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
             ],
            )
          ],
        ),
      ),
      bottomNavigationBar: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Cancel', style: TextStyle(color: Colors.white)),
        ),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }

  Row buildDetailsRow(IconData icon, String title, String subtitle) {
    return Row(
      children: <Widget>[
        Icon(icon),
        SizedBox(
          width: 5,
        ),
        RichText(
          text: TextSpan(
            text: '$title ',
            style: TextStyle(color: Colors.black, fontSize: 16),
            children: <TextSpan>[
              TextSpan(
                  text: '$subtitle',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
