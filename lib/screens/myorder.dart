import 'package:flutter/material.dart';
import 'package:like_hod/utils/style.dart';

class MyOrders extends StatefulWidget {
  MyOrders({Key key}) : super(key: key);

  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ListView(
          controller: controller,
          children: <Widget>[
            buildOrdersRow(context),
            buildOrdersRow(context),
            buildOrdersRow(context),
          ],
        ),
      ),
    );
  }

  Row buildOrdersRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: buildOrderCard(() {
          Navigator.pushNamed(context, '\OrderDetails');
        })),
        Expanded(child: buildOrderCard(() {
          Navigator.pushNamed(context, '\OrderDetails');
        }))
      ],
    );
  }
}

Card buildOrderCard(Function onPress) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180,
          height: 150,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[100])),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/product.jpg'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Pay Phone'),
              Text('300 \$'),
              Text('US 🛫 UK'),
              smallButton('Details', onPress),
            ],
          ),
        )
      ],
    ),
  );
}
