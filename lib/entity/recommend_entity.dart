import 'package:flutter_template/generated/json/base/json_convert_content.dart';
import 'package:flutter_template/generated/json/base/json_filed.dart';

class RecommendEntity with JsonConvert<RecommendEntity> {
  int id;
  int type;
  String name;
  String copywriter;
  String picUrl;
  int playcount;
  int createTime;
  RecommendCreator creator;
  int trackCount;
  int userId;
  String alg;
}

class RecommendCreator with JsonConvert<RecommendCreator> {
  dynamic remarkName;
  bool mutual;
  String backgroundUrl;
  String detailDescription;
  bool defaultAvatar;
  int avatarImgId;
  int backgroundImgId;
  dynamic expertTags;
  int djStatus;
  bool followed;
  DateTime avatarImgIdStr;
  DateTime backgroundImgIdStr;
  int accountStatus;
  int userId;
  int vipType;
  int province;
  String avatarUrl;
  int authStatus;
  int userType;
  String nickname;
  int gender;
  int birthday;
  int city;
  String description;
  String signature;
  int authority;
}
