
import 'package:bon_tourismo/destination_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Destination {
  final String title;
  final String date;
  final String photoUrl;
  final double rating;
  final String description;
  Destination(
      this.title, this.date, this.rating, this.photoUrl, this.description);
}

class DestinationCarousel extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "2019 5 Days Dubai Winter packages.",
        "Yesterday",
        4.7,
        "https://images.unsplash.com/photo-1518684079-3c830dcef090?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
        "   A highlight of Dubai is its great modern architectural buildings, fabulous shopping malls, from modern designer shopping centers to traditional gold souks, there is something for everyone."
   ),
    Destination(
        "Thailand 7 days",
        "A week ago",
        4.9,
        "https://images.unsplash.com/photo-1519451241324-20b4ea2c4220?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        " A highlight of Dubai is its great modern architectural buildings, fabulous shopping malls, from modern designer shopping centers to traditional gold souks, there is something for everyone."),
    Destination(
        "South Africa",
        "Two weeks Ago",
        4.3,
        "https://images.unsplash.com/photo-1550761717-d03b44d9cb33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80",
        " A highlight of Dubai is its great modern architectural buildings, fabulous shopping malls, from modern designer shopping centers to traditional gold souks, there is something for everyone."),
    Destination(
        "London pl match",
        "2 days ago",
        4.8,
        "https://images.unsplash.com/photo-1512734099960-65a682cbfe2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
        " A highlight of Dubai is its great modern architectural buildings, fabulous shopping malls, from modern designer shopping centers to traditional gold souks, there is something for everyone."),
  ];

  List<Widget> renderDestinations() {
    final r = destinations.map((d) => DestinationCard(data: d)).toList();
    print(r);
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: SizedBox(
                height: 225,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    scrollDirection: Axis.horizontal,
                    itemCount: destinations.length,
                    itemBuilder: (context, int index) =>
                        DestinationCard(data: destinations[index]))),
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "VIEW ALL",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          )
        ]);
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    @required this.data,
  });

  final Destination data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        Navigator.of(context).push(
          PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Detail(data.photoUrl, data.title, data.description);
          }, transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(opacity: animation, child: child);
          }),
        );
      },
      child: Container(
          margin: EdgeInsets.only(right: 10),
          width: 150,
          child: Stack(children: <Widget>[
            Hero(
              tag: "detailHero${data.title}",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: NetworkImage(data.photoUrl))),
              ), 
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          data.rating.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 7),
                              child: Text(data.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                          Container(
                            child: Text(
                              data.date,
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ])
                  ]),
            )
          ])),
    );
  }
}