import 'package:appnews/images/images.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TheNews extends StatelessWidget {
  TheNews({super.key});
  List<OneNew> listnews = [
    OneNew(
      name: 'Title',
      image: ImagesApp.entertaiment,
    ),
    OneNew(
      name: 'Title',
      image: ImagesApp.entertaiment,
    ),
    OneNew(
      name: 'Title',
      image: ImagesApp.entertaiment,
    ),
    OneNew(
      name: 'Title',
      image: ImagesApp.entertaiment,
    ),
    OneNew(
      name: 'Title',
      image: ImagesApp.entertaiment,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: listnews.length,
        itemBuilder: (context, index) => listnews[index],
      ),
    );
  }
}

// ignore: must_be_immutable
class OneNew extends StatelessWidget {
  String name;
  String image;
  OneNew({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      // height: VisualDensity.minimumDensity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .35,
            // child: Image.asset(
            //   image,
            //   fit: BoxFit.cover,
            // )
          ),
          Text(
            maxLines: 2,
            name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            maxLines: 2,
            'data',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
