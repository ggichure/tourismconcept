import 'package:bon_tourismo/activity.dart';
import 'package:bon_tourismo/destination_card.dart';
import 'package:flutter/material.dart';

class PopularDestinations extends StatefulWidget {
  @override
  _PopularDestinationsState createState() => _PopularDestinationsState();
}

class _PopularDestinationsState extends State<PopularDestinations> {
  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: _screenSize.width * 0.7,
          width: _screenSize.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return _buildItems(index);
            },
          ),
        ),
        
      ],
    );
  }

  _buildItems(int index) {
    print("$index");
    if (index == 0) {
      return WidgetUtils.addClick(
          Container(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: DestinationCard(
                imageUrl:
                    "https://images.unsplash.com/photo-1564490292125-2e3c78a0ef44?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
                city: "Mombasa",
                country: "Kenya",
                activities: 130,
                description:
                    "Enjoy best trips from top travel agencies at best prices",
              )),
          () => Navigator.pushNamed(context, '/destination'));
    } else {
      return Container(
          padding: EdgeInsets.only(left: 5.0, right: 5.0),
          child: DestinationCard(
            imageUrl:
                "https://images.unsplash.com/photo-1511684633137-6b5fc88b3dbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
            city: "Zanzibar",
            country: "Tanzania",
            activities: 98,
            description:
                "Unique and customized tours no extra payments",
          ));
    }
  }
}
