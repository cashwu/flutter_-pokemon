import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyCacheImage extends StatefulWidget {
  @override
  _MyCacheImageState createState() => _MyCacheImageState();
}

class _MyCacheImageState extends State<MyCacheImage> {
  int index = 1;
  String url = "https://www.serebii.net/pokemongo/pokemon/";

  String generateUrl() {

    String imageIndex = "00$index";

    if (imageIndex.length > 3) {
      imageIndex = imageIndex.substring(imageIndex.length - 3);
    }

    print(imageIndex);

    return "$url$imageIndex.png";
  }

  @override
  Widget build(BuildContext context) {
    var cacheImage = new CachedNetworkImage(
      imageUrl: generateUrl(),
      placeholder: new CircularProgressIndicator(),
      errorWidget: new Icon(Icons.error),
      width: 400,
      height: 200,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Cache Image"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(50)),
              child: cacheImage,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                      child: Text("Back"),
                      onPressed: () {
                        setState(() {
                          index = (index <= 1 ? index : index - 1);
                        });
                      }),
                  RaisedButton(
                      child: Text("Next"),
                      onPressed: () {
                        setState(() {
                          index += 1;
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
