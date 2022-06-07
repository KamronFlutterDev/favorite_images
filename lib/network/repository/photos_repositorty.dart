import 'package:endless_photo_scroll/network/api_client.dart';
import 'package:endless_photo_scroll/network/responses/photos_response.dart';


class PhotoRepository {
  static final PhotoRepository _photoRepository = PhotoRepository._();

  // static const int _perPage = 20;

  PhotoRepository._();

  factory PhotoRepository() {
    return _photoRepository;
  }

  Future<PhotosModel> getPhotos({required int page}) async {
    try {
      // PhotosLoadingState(message: 'Loading photos');
      var urL =
      ('https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=36cffad614cec1a4b6d711660f2afb11&tags=woman&format=json&nojsoncallback=1&api_sig=252d0404aba734716986a108886ac541');


      NetworkHelper networkHelper = NetworkHelper(urL: urL);

      final data = await networkHelper.getData();
      PhotosModel model = PhotosModel.fromJson(data);


      return model;
    } catch (e) {
      throw Exception(e);
    }
  }
}
