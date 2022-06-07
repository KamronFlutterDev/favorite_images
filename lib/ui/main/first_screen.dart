import 'package:endless_photo_scroll/network/api_client.dart';
import 'package:endless_photo_scroll/network/repository/photos_repositorty.dart';
import 'package:flutter/material.dart';
import 'package:endless_photo_scroll/network/responses/photos_response.dart';
import 'package:favorite_button/favorite_button.dart';
import 'dart:developer';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int page = 1;
  PhotoRepository photoRepository = PhotoRepository();

  List<Widget> listOfPhotos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Endless photos'),
          backgroundColor: Colors.purple,
          leading: PopupMenuButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            padding: const EdgeInsets.all(15),
            elevation: 10,
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.purpleAccent),
                    ),
                  )),
              PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'My publications',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.purpleAccent),
                    ),
                  )),
              PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'My Favorites',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.purpleAccent),
                    ),
                  )),
              PopupMenuItem(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.purpleAccent),
                    ),
                  )),
            ],
          )),
      body: FutureBuilder(
        future: getAllData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            log('${snapshot.data}');
            final PhotosModel data = snapshot.data as PhotosModel;
            return ListView.builder(
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(data.at.toString()),
                    FavoriteButton(
                      valueChanged: (isFavorite) {
                        setState(() {
                          listOfPhotos.add(
                            PhotosCard(
                              symbol: data.symbol.toString()[index],
                              lastPrice: data.lastPrice.toString()[index],
                              highPrice: data.highPrice.toString()[index],
                              lowPrice: data.lowPrice.toString()[index],
                            ),
                          );
                        });
                      },
                      iconDisabledColor: Colors.grey,
                    ),
                  ],
                );
              },
            );
          } else {
            return Center(
              child: Column(
                children: [
                  Text(snapshot.hasData.toString()),
                  Text(snapshot.data.toString()),
                  const CircularProgressIndicator(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

Future<PhotosModel> getAllData() async {
  var url =
      'https://api.wazirx.com/sapi/v1/tickers/24hr';
  NetworkHelper networkHelper = NetworkHelper(urL: url);
  try {
    final data = await networkHelper.getData();
    PhotosModel model = PhotosModel.fromJson(data);
    log(data);
    return model;
  } catch (e) {
    print(e);
    throw Exception("Error on server");
  }
}


class PhotosCard extends StatelessWidget {
  Color cardColorState = Colors.white;
  late String lowPrice;
  late String highPrice;
  late String lastPrice;
  late String symbol;

  PhotosCard(
      {Key? key,
        required this.symbol,
        required this.lastPrice,
        required this.lowPrice,
        required this.highPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: cardColorState,
      elevation: 10,
      child: Column(
        children: [

          Text(
            symbol,
            style: const TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 30,
          ),
        ],
      ),
    );
  }
}

// Card(
// shadowColor: Colors.green,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20),
// ),
// color: Colors.white,
// elevation: 10,
// child: Column(
// children: [
// Image.network(
// 'https://live.staticflickr.com/${data.photos.photo[index].server}/${data.photos.photo[index].id}_${data.photos.photo[index].secret}_w.jpg',
// ),
// Text('${data.photos.page}'),
// Text(
// data.photos.photo[index].title,
// style: const TextStyle(
// color: Colors.grey,
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// const Divider(
// height: 30,
// ),
// ],
// ),
// ),
