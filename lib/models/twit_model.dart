import 'package:flutter/cupertino.dart';

class TwitModel{
  String? actionType;
  Widget? actionIcon;
  List<String>? actionUserNameList;
  String userImage;
  String userName;
  String nickName;
  String tweetTime;
  String textContent;
  String? contentImage;
  int commentNumber = 0;
  int retweetNumber = 0;
  int likeNumber = 0;

  TwitModel({
    this.actionType,
    this.actionIcon,
    this.actionUserNameList,
    required this.userImage,
    required this.userName,
    required this.nickName,
    required this.tweetTime,
    required this.textContent,
    this.contentImage,
    required this.commentNumber,
    required this.retweetNumber,
    required this.likeNumber,
  });
}