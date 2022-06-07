// class PhotosModel {
//   PhotosModel({
//     required this.photos,
//     required this.stat,
//   });
//   late final Photos photos;
//   late final String stat;
//
//   PhotosModel.fromJson(Map<String, dynamic> json){
//     photos = Photos.fromJson(json['photos']);
//     stat = json['stat'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['photos'] = photos.toJson();
//     _data['stat'] = stat;
//     return _data;
//   }
// }
//
// class Photos {
//   Photos({
//     required this.page,
//     required this.pages,
//     required this.perpage,
//     required this.total,
//     required this.photo,
//   });
//   late final int page;
//   late final int pages;
//   late final int perpage;
//   late final int total;
//   late final List<Photo> photo;
//
//   Photos.fromJson(Map<String, dynamic> json){
//     page = json['page'];
//     pages = json['pages'];
//     perpage = json['perpage'];
//     total = json['total'];
//     photo = List.from(json['photo']).map((e)=>Photo.fromJson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['page'] = page;
//     _data['pages'] = pages;
//     _data['perpage'] = perpage;
//     _data['total'] = total;
//     _data['photo'] = photo.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }
//
// class Photo {
//   Photo({
//     required this.id,
//     required this.owner,
//     required this.secret,
//     required this.server,
//     required this.farm,
//     required this.title,
//     required this.ispublic,
//     required this.isfriend,
//     required this.isfamily,
//   });
//   late final String id;
//   late final String owner;
//   late final String secret;
//   late final String server;
//   late final int farm;
//   late final String title;
//   late final int ispublic;
//   late final int isfriend;
//   late final int isfamily;
//
//   Photo.fromJson(Map<String, dynamic> json){
//     id = json['id'];
//     owner = json['owner'];
//     secret = json['secret'];
//     server = json['server'];
//     farm = json['farm'];
//     title = json['title'];
//     ispublic = json['ispublic'];
//     isfriend = json['isfriend'];
//     isfamily = json['isfamily'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['owner'] = owner;
//     _data['secret'] = secret;
//     _data['server'] = server;
//     _data['farm'] = farm;
//     _data['title'] = title;
//     _data['ispublic'] = ispublic;
//     _data['isfriend'] = isfriend;
//     _data['isfamily'] = isfamily;
//     return _data;
//   }
// }


// class PhotosModel {
//   int? totalResults;
//   int? page;
//   int? perPage;
//   List<Photos>? photos;
//   String? nextPage;
//
//   PhotosModel(
//       {this.totalResults, this.page, this.perPage, this.photos, this.nextPage});
//
//   PhotosModel.fromJson(Map<String, dynamic> json) {
//     totalResults = json['total_results'];
//     page = json['page'];
//     perPage = json['per_page'];
//     if (json['photos'] != null) {
//       photos = <Photos>[];
//       json['photos'].forEach((v) {
//         photos!.add(new Photos.fromJson(v));
//       });
//     }
//     nextPage = json['next_page'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['total_results'] = this.totalResults;
//     data['page'] = this.page;
//     data['per_page'] = this.perPage;
//     if (this.photos != null) {
//       data['photos'] = this.photos!.map((v) => v.toJson()).toList();
//     }
//     data['next_page'] = this.nextPage;
//     return data;
//   }
// }
//
// class Photos {
//   int? id;
//   int? width;
//   int? height;
//   String? url;
//   String? photographer;
//   String? photographerUrl;
//   int? photographerId;
//   String? avgColor;
//   Src? src;
//   bool? liked;
//   String? alt;
//
//   Photos(
//       {this.id,
//         this.width,
//         this.height,
//         this.url,
//         this.photographer,
//         this.photographerUrl,
//         this.photographerId,
//         this.avgColor,
//         this.src,
//         this.liked,
//         this.alt});
//
//   Photos.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     width = json['width'];
//     height = json['height'];
//     url = json['url'];
//     photographer = json['photographer'];
//     photographerUrl = json['photographer_url'];
//     photographerId = json['photographer_id'];
//     avgColor = json['avg_color'];
//     src = json['src'] != null ? new Src.fromJson(json['src']) : null;
//     liked = json['liked'];
//     alt = json['alt'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['url'] = this.url;
//     data['photographer'] = this.photographer;
//     data['photographer_url'] = this.photographerUrl;
//     data['photographer_id'] = this.photographerId;
//     data['avg_color'] = this.avgColor;
//     if (this.src != null) {
//       data['src'] = this.src!.toJson();
//     }
//     data['liked'] = this.liked;
//     data['alt'] = this.alt;
//     return data;
//   }
// }
//
// class Src {
//   String? original;
//   String? large2x;
//   String? large;
//   String? medium;
//   String? small;
//   String? portrait;
//   String? landscape;
//   String? tiny;
//
//   Src(
//       {this.original,
//         this.large2x,
//         this.large,
//         this.medium,
//         this.small,
//         this.portrait,
//         this.landscape,
//         this.tiny});
//
//   Src.fromJson(Map<String, dynamic> json) {
//     original = json['original'];
//     large2x = json['large2x'];
//     large = json['large'];
//     medium = json['medium'];
//     small = json['small'];
//     portrait = json['portrait'];
//     landscape = json['landscape'];
//     tiny = json['tiny'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['original'] = this.original;
//     data['large2x'] = this.large2x;
//     data['large'] = this.large;
//     data['medium'] = this.medium;
//     data['small'] = this.small;
//     data['portrait'] = this.portrait;
//     data['landscape'] = this.landscape;
//     data['tiny'] = this.tiny;
//     return data;
//   }
// }
class PhotosModel {
  String? symbol;
  String? baseAsset;
  String? quoteAsset;
  String? openPrice;
  String? lowPrice;
  String? highPrice;
  String? lastPrice;
  String? volume;
  String? bidPrice;
  String? askPrice;
  int? at;

  PhotosModel(
      {this.symbol,
        this.baseAsset,
        this.quoteAsset,
        this.openPrice,
        this.lowPrice,
        this.highPrice,
        this.lastPrice,
        this.volume,
        this.bidPrice,
        this.askPrice,
        this.at});

  PhotosModel.fromJson(Map<String, dynamic> json) {
    symbol = json['symbol'];
    baseAsset = json['baseAsset'];
    quoteAsset = json['quoteAsset'];
    openPrice = json['openPrice'];
    lowPrice = json['lowPrice'];
    highPrice = json['highPrice'];
    lastPrice = json['lastPrice'];
    volume = json['volume'];
    bidPrice = json['bidPrice'];
    askPrice = json['askPrice'];
    at = json['at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['symbol'] = this.symbol;
    data['baseAsset'] = this.baseAsset;
    data['quoteAsset'] = this.quoteAsset;
    data['openPrice'] = this.openPrice;
    data['lowPrice'] = this.lowPrice;
    data['highPrice'] = this.highPrice;
    data['lastPrice'] = this.lastPrice;
    data['volume'] = this.volume;
    data['bidPrice'] = this.bidPrice;
    data['askPrice'] = this.askPrice;
    data['at'] = this.at;
    return data;
  }
}