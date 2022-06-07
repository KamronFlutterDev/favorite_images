import 'package:endless_photo_scroll/api.dart';
import 'package:endless_photo_scroll/bussiness_logic/photos_state.dart';
import 'package:endless_photo_scroll/models/photos_model.dart';

import 'dart:convert';


class PhotoRepository {
  static final PhotoRepository _photoRepository = PhotoRepository._();

  // static const int _perPage = 20;

  PhotoRepository._();

  factory PhotoRepository() {
    return _photoRepository;
  }

  Future<PhotosModel> getPhotos({required int page}) async {
    try {
      PhotosLoadingState(message: 'Loading photos');
      var urL =
      ('https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=36cffad614cec1a4b6d711660f2afb11&tags=woman&format=json&nojsoncallback=1&api_sig=252d0404aba734716986a108886ac541');


      NetworkHelper networkHelper = NetworkHelper(urL: urL);

      final data = await networkHelper.getdata();
      PhotosModel model = PhotosModel.fromJson(data);
      print(page);
      print(model.symbol);


      return model;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
