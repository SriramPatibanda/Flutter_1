import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;
  LocationDetail(this.location);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(location.name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(location),
      ),
    );
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();
    result.add(
      _bannerImage(location.url, 175.0),
    );
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 25.0, 10.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right:  15.0),
        child: Text(text));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
