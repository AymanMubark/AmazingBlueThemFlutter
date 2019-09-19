import 'package:flutter/material.dart';
import 'package:like_hod/utils/style.dart';

class HomeActivities extends StatefulWidget {
  HomeActivities({Key key}) : super(key: key);
  _HomeActivitiesState createState() => _HomeActivitiesState();
}

class _HomeActivitiesState extends State<HomeActivities> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/city.jpg"),
              height: 200,
              width: double.infinity,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0x00000000),
                    const Color(0x00000000),
                    const Color(0x66000000),
                    const Color(0x00000000),
                    const Color(0xCC000000),
                  ],
                ),
              ),
            ),
            Center(
                child: Text(
              "UK",
              style: Theme.of(context).primaryTextTheme.title,
              textAlign: TextAlign.center,
            )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Orders',  style: ksubTitle),
                      FlatButton(
                        child: Text('Show All', style: kshowAll,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Cities',  style: ksubTitle),
                     FlatButton(
                        child: Text('Show All', style: kshowAll,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildCityCard(),
                        buildCityCard(),
                        buildCityCard(),
                        buildCityCard(),
                        buildCityCard(),
                        buildCityCard(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Travels',style: ksubTitle,),
                     FlatButton(
                        child: Text('Show All', style: kshowAll,),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                        buildTravelCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Card buildTravelCard() {
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
               smallButton('Approve',(){})
              ],
            ),
          )
        ],
      ),
    );
  }

  Card buildCityCard() {
    return Card(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/city.jpg"),
            height: MediaQuery.of(context).size.width * 0.8,
            width: 180,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.8,
            width: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0x00000000),
                  const Color(0x00000000),
                  const Color(0x66000000),
                  const Color(0x00000000),
                  const Color(0xCC000000),
                ],
              ),
            ),
          ),
          Center(
              child: Text(
            "UK",
            style: Theme.of(context).primaryTextTheme.title,
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
