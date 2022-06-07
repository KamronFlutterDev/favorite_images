import 'package:flutter/material.dart';

abstract class PhotosState {
  const PhotosState();
}

class PhotosInitialState extends PhotosState {
  const PhotosInitialState();
}

class PhotosLoadingState extends PhotosState{
  final String message;

  PhotosLoadingState({required this.message});
}

class PhotosSuccessState extends PhotosState{
   final List<PhotosState> photos;

   PhotosSuccessState({required this.photos});
}

class PhotoErrorState extends PhotosState{
  late final String error;

  PhotoErrorState({required this.error});
}

