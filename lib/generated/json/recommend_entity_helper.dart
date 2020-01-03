import 'package:flutter_template/entity/recommend_entity.dart';

recommendEntityFromJson(RecommendEntity data, Map<String, dynamic> json) {
  data.id = json['id'];
  data.type = json['type'];
  data.name = json['name'];
  data.copywriter = json['copywriter'];
  data.picUrl = json['picUrl'];
  data.playcount = json['playcount'];
  data.createTime = json['createTime'];
  data.creator = json['creator'] != null
      ? new RecommendCreator().fromJson(json['creator'])
      : null;
  data.trackCount = json['trackCount'];
  data.userId = json['userId'];
  data.alg = json['alg'];
  return data;
}

Map<String, dynamic> recommendEntityToJson(RecommendEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['type'] = entity.type;
  data['name'] = entity.name;
  data['copywriter'] = entity.copywriter;
  data['picUrl'] = entity.picUrl;
  data['playcount'] = entity.playcount;
  data['createTime'] = entity.createTime;
  if (entity.creator != null) {
    data['creator'] = RecommendCreator().toJson();
  }
  data['trackCount'] = entity.trackCount;
  data['userId'] = entity.userId;
  data['alg'] = entity.alg;
  return data;
}

recommendCreatorFromJson(RecommendCreator data, Map<String, dynamic> json) {
  data.remarkName = json['remarkName'];
  data.mutual = json['mutual'];
  data.backgroundUrl = json['backgroundUrl'];
  data.detailDescription = json['detailDescription'];
  data.defaultAvatar = json['defaultAvatar'];
  data.avatarImgId = json['avatarImgId'];
  data.backgroundImgId = json['backgroundImgId'];
  data.expertTags = json['expertTags'];
  data.djStatus = json['djStatus'];
  data.followed = json['followed'];
  if (json['avatarImgIdStr'] != null) {
    data.avatarImgIdStr = DateTime.tryParse(json['avatarImgIdStr']);
  }
  if (json['backgroundImgIdStr'] != null) {
    data.backgroundImgIdStr = DateTime.tryParse(json['backgroundImgIdStr']);
  }
  data.accountStatus = json['accountStatus'];
  data.userId = json['userId'];
  data.vipType = json['vipType'];
  data.province = json['province'];
  data.avatarUrl = json['avatarUrl'];
  data.authStatus = json['authStatus'];
  data.userType = json['userType'];
  data.nickname = json['nickname'];
  data.gender = json['gender'];
  data.birthday = json['birthday'];
  data.city = json['city'];
  data.description = json['description'];
  data.signature = json['signature'];
  data.authority = json['authority'];
  return data;
}

Map<String, dynamic> recommendCreatorToJson(RecommendCreator entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['remarkName'] = entity.remarkName;
  data['mutual'] = entity.mutual;
  data['backgroundUrl'] = entity.backgroundUrl;
  data['detailDescription'] = entity.detailDescription;
  data['defaultAvatar'] = entity.defaultAvatar;
  data['avatarImgId'] = entity.avatarImgId;
  data['backgroundImgId'] = entity.backgroundImgId;
  data['expertTags'] = entity.expertTags;
  data['djStatus'] = entity.djStatus;
  data['followed'] = entity.followed;
  data['avatarImgIdStr'] = entity.avatarImgIdStr;
  data['backgroundImgIdStr'] = entity.backgroundImgIdStr;
  data['accountStatus'] = entity.accountStatus;
  data['userId'] = entity.userId;
  data['vipType'] = entity.vipType;
  data['province'] = entity.province;
  data['avatarUrl'] = entity.avatarUrl;
  data['authStatus'] = entity.authStatus;
  data['userType'] = entity.userType;
  data['nickname'] = entity.nickname;
  data['gender'] = entity.gender;
  data['birthday'] = entity.birthday;
  data['city'] = entity.city;
  data['description'] = entity.description;
  data['signature'] = entity.signature;
  data['authority'] = entity.authority;
  return data;
}
