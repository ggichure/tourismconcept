import 'package:bon_tourismo/activity.dart';
import 'package:flutter/material.dart';


class DestinationPage extends StatefulWidget {
  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  ScrollController _scrollController;
  bool _isExpanded = false;
  static const kSilverSize = 300 - kToolbarHeight;
  double _currentSize = 300 - kToolbarHeight;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() => setState(() {
            _isExpanded = (_scrollController.hasClients &&
                _scrollController.offset > kSilverSize);

            if (_scrollController.hasClients &&
                _scrollController.offset <= kSilverSize &&
                _scrollController.offset >= 0) {
              _currentSize = kSilverSize - _scrollController.offset;
            }
          }));
  }

  double getScale(double maxSize) {
    return maxSize * _currentSize / kSilverSize;
  }

  Color getColorScaled() {
    num v = 255 - (255 * _currentSize / kSilverSize).round().abs();

    return Color.fromRGBO(v, v, v, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
              iconTheme: IconThemeData(
                color: getColorScaled(), //change your color here
              ),
              expandedHeight: 300,
              pinned: true,
              backgroundColor: (_isExpanded) ? Colors.blue : Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Mombasa",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500)),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on,
                              color: Colors.white70, size: getScale(15.0)),
                          Text("Kenya",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: getScale(15.0)))
                        ],
                      )
                    ],
                  )),
                  background: Hero(
                      tag: "Mombasa",
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1554732257-a16cfdfec4b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover)),
                        ),
                      ))),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () {/* ... */},
                ),
                IconButton(
                  icon: const Icon(Icons.sort),
                  tooltip: 'Sort',
                  onPressed: () {/* ... */},
                ),
              ]),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ActivityWidget(
                      type: "Beach holiday",
                      rating: 5,
                      name: "2019 COAST 3 Days & 5 Days Holiday Packages",
                      price: 30,
                      times: ["9:00 am", "6:00 pm"],
                      imageUrl:
                          "https://images.unsplash.com/photo-1535349838154-27b18aa98c2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                    ),
                    ActivityWidget(
                      type: "Sighseeing Tour",
                      rating: 5,
                      name: "Fort Jesus",
                      price: 210,
                      times: ["9:00 am", "2:00 pm"],
                      imageUrl:
                          "https://images.unsplash.com/photo-1560564029-6eb181a872c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                    ),
                    ActivityWidget(
                      type: "Sighseeing Tour",
                      rating: 5,
                      name: "Mcoastal tour",
                      price: 125,
                      times: ["9:00 am", "11:00 am"],
                      imageUrl:
                          "https://images.unsplash.com/photo-1560564029-6eb181a872c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                    ),
                    ActivityWidget(
                      type: "beach tour",
                      rating: 5,
                      name: "a day in malindi",
                      price: 210,
                      times: ["7:00 am", "8:00 am"],
                      imageUrl:
                          "https://images.unsplash.com/photo-1558462610-cf8d1b0248a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                    ),
                    ActivityWidget(
                      type: "Sighseeing Tour",
                      rating: 5,
                      name: "scuba diving at vipingo",
                      price: 125,
                      times: ["9:00 am", "6:00 pm"],
                      imageUrl:
                          "https://images.unsplash.com/photo-1519327567471-ae47752b8089?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80",
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}