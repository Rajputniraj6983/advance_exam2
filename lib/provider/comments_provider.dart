import 'dart:convert';
import 'package:advance_exam2/modal/api_service_calling.dart';
import 'package:flutter/material.dart';
import '../modal/comments_model.dart';


class CommentsProvider extends ChangeNotifier{

  late  Comments  comments;
  Future<void> fetchData() async {
    ApiServices apiServices = ApiServices();
    notifyListeners();
    String? data = await  apiServices.apiCalling();
    Map json = jsonDecode(data!);
    comments = Comments.fromJson(json);
    notifyListeners();

  }

  CommentsProvider()
  {
    fetchData();
  }

}