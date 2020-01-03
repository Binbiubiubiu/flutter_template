import 'package:flutter_template/entity/banner_entity.dart';

bannerEntityFromJson(BannerEntity data, Map<String, dynamic> json) {
  data.pic = json['pic'];
  data.targetId = json['targetId'];
  data.adid = json['adid'];
  data.targetType = json['targetType'];
  data.titleColor = json['titleColor'];
  data.typeTitle = json['typeTitle'];
  data.url = json['url'];
  data.adurlV2 = json['adurlV2'];
  data.exclusive = json['exclusive'];
  data.monitorImpress = json['monitorImpress'];
  data.monitorClick = json['monitorClick'];
  data.monitorType = json['monitorType'];
  if (json['monitorImpressList'] != null) {
    data.monitorImpressList = new List<dynamic>();
    data.monitorImpressList.addAll(json['monitorImpressList']);
  }
  if (json['monitorClickList'] != null) {
    data.monitorClickList = new List<dynamic>();
    data.monitorClickList.addAll(json['monitorClickList']);
  }
  data.monitorBlackList = json['monitorBlackList'];
  data.extMonitor = json['extMonitor'];
  data.extMonitorInfo = json['extMonitorInfo'];
  data.adSource = json['adSource'];
  data.adLocation = json['adLocation'];
  if (json['encodeId'] != null) {
    data.encodeId = DateTime.tryParse(json['encodeId']);
  }
  data.program = json['program'];
  data.event = json['event'];
  data.video = json['video'];
  data.dynamicVideoData = json['dynamicVideoData'];
  data.song =
      json['song'] != null ? new BannerSong().fromJson(json['song']) : null;
  if (json['bannerId'] != null) {
    data.bannerId = DateTime.tryParse(json['bannerId']);
  }
  data.alg = json['alg'];
  data.scm = json['scm'];
  data.requestId = json['requestId'];
  data.showAdTag = json['showAdTag'];
  data.pid = json['pid'];
  data.showContext = json['showContext'];
  data.adDispatchJson = json['adDispatchJson'];
  return data;
}

Map<String, dynamic> bannerEntityToJson(BannerEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['pic'] = entity.pic;
  data['targetId'] = entity.targetId;
  data['adid'] = entity.adid;
  data['targetType'] = entity.targetType;
  data['titleColor'] = entity.titleColor;
  data['typeTitle'] = entity.typeTitle;
  data['url'] = entity.url;
  data['adurlV2'] = entity.adurlV2;
  data['exclusive'] = entity.exclusive;
  data['monitorImpress'] = entity.monitorImpress;
  data['monitorClick'] = entity.monitorClick;
  data['monitorType'] = entity.monitorType;
  if (entity.monitorImpressList != null) {
    data['monitorImpressList'] = [];
  }
  if (entity.monitorClickList != null) {
    data['monitorClickList'] = [];
  }
  data['monitorBlackList'] = entity.monitorBlackList;
  data['extMonitor'] = entity.extMonitor;
  data['extMonitorInfo'] = entity.extMonitorInfo;
  data['adSource'] = entity.adSource;
  data['adLocation'] = entity.adLocation;
  data['encodeId'] = entity.encodeId;
  data['program'] = entity.program;
  data['event'] = entity.event;
  data['video'] = entity.video;
  data['dynamicVideoData'] = entity.dynamicVideoData;
  if (entity.song != null) {
    data['song'] = BannerSong().toJson();
  }
  data['bannerId'] = entity.bannerId;
  data['alg'] = entity.alg;
  data['scm'] = entity.scm;
  data['requestId'] = entity.requestId;
  data['showAdTag'] = entity.showAdTag;
  data['pid'] = entity.pid;
  data['showContext'] = entity.showContext;
  data['adDispatchJson'] = entity.adDispatchJson;
  return data;
}

bannerSongFromJson(BannerSong data, Map<String, dynamic> json) {
  data.name = json['name'];
  data.id = json['id'];
  data.pst = json['pst'];
  data.t = json['t'];
  if (json['ar'] != null) {
    data.ar = new List<BannerSongAr>();
    (json['ar'] as List).forEach((v) {
      data.ar.add(new BannerSongAr().fromJson(v));
    });
  }
  if (json['alia'] != null) {
    data.alia = new List<dynamic>();
    data.alia.addAll(json['alia']);
  }
  data.pop = json['pop'];
  data.st = json['st'];
  data.rt = json['rt'];
  data.fee = json['fee'];
  data.v = json['v'];
  data.crbt = json['crbt'];
  data.cf = json['cf'];
  data.al = json['al'] != null ? new BannerSongAl().fromJson(json['al']) : null;
  data.dt = json['dt'];
  data.h = json['h'] != null ? new BannerSongH().fromJson(json['h']) : null;
  data.m = json['m'] != null ? new BannerSongM().fromJson(json['m']) : null;
  data.l = json['l'] != null ? new BannerSongL().fromJson(json['l']) : null;
  data.a = json['a'];
  data.cd = json['cd'];
  data.no = json['no'];
  data.rtUrl = json['rtUrl'];
  data.ftype = json['ftype'];
  if (json['rtUrls'] != null) {
    data.rtUrls = new List<dynamic>();
    data.rtUrls.addAll(json['rtUrls']);
  }
  data.djId = json['djId'];
  data.copyright = json['copyright'];
  data.sId = json['s_id'];
  data.mark = json['mark'];
  data.cp = json['cp'];
  data.mv = json['mv'];
  data.mst = json['mst'];
  data.rtype = json['rtype'];
  data.rurl = json['rurl'];
  data.publishTime = json['publishTime'];
  data.privilege = json['privilege'] != null
      ? new BannerSongPrivilege().fromJson(json['privilege'])
      : null;
  return data;
}

Map<String, dynamic> bannerSongToJson(BannerSong entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['pst'] = entity.pst;
  data['t'] = entity.t;
  if (entity.ar != null) {
    data['ar'] = entity.ar.map((v) => v.toJson()).toList();
  }
  if (entity.alia != null) {
    data['alia'] = [];
  }
  data['pop'] = entity.pop;
  data['st'] = entity.st;
  data['rt'] = entity.rt;
  data['fee'] = entity.fee;
  data['v'] = entity.v;
  data['crbt'] = entity.crbt;
  data['cf'] = entity.cf;
  if (entity.al != null) {
    data['al'] = BannerSongAl().toJson();
  }
  data['dt'] = entity.dt;
  if (entity.h != null) {
    data['h'] = BannerSongH().toJson();
  }
  if (entity.m != null) {
    data['m'] = BannerSongM().toJson();
  }
  if (entity.l != null) {
    data['l'] = BannerSongL().toJson();
  }
  data['a'] = entity.a;
  data['cd'] = entity.cd;
  data['no'] = entity.no;
  data['rtUrl'] = entity.rtUrl;
  data['ftype'] = entity.ftype;
  if (entity.rtUrls != null) {
    data['rtUrls'] = [];
  }
  data['djId'] = entity.djId;
  data['copyright'] = entity.copyright;
  data['s_id'] = entity.sId;
  data['mark'] = entity.mark;
  data['cp'] = entity.cp;
  data['mv'] = entity.mv;
  data['mst'] = entity.mst;
  data['rtype'] = entity.rtype;
  data['rurl'] = entity.rurl;
  data['publishTime'] = entity.publishTime;
  if (entity.privilege != null) {
    data['privilege'] = BannerSongPrivilege().toJson();
  }
  return data;
}

bannerSongArFromJson(BannerSongAr data, Map<String, dynamic> json) {
  data.id = json['id'];
  data.name = json['name'];
  if (json['tns'] != null) {
    data.tns = new List<dynamic>();
    data.tns.addAll(json['tns']);
  }
  if (json['alias'] != null) {
    data.alias = new List<dynamic>();
    data.alias.addAll(json['alias']);
  }
  return data;
}

Map<String, dynamic> bannerSongArToJson(BannerSongAr entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['name'] = entity.name;
  if (entity.tns != null) {
    data['tns'] = [];
  }
  if (entity.alias != null) {
    data['alias'] = [];
  }
  return data;
}

bannerSongAlFromJson(BannerSongAl data, Map<String, dynamic> json) {
  data.id = json['id'];
  data.name = json['name'];
  data.picUrl = json['picUrl'];
  if (json['tns'] != null) {
    data.tns = new List<dynamic>();
    data.tns.addAll(json['tns']);
  }
  if (json['pic_str'] != null) {
    data.picStr = DateTime.tryParse(json['pic_str']);
  }
  data.pic = json['pic'];
  return data;
}

Map<String, dynamic> bannerSongAlToJson(BannerSongAl entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['picUrl'] = entity.picUrl;
  if (entity.tns != null) {
    data['tns'] = [];
  }
  data['pic_str'] = entity.picStr;
  data['pic'] = entity.pic;
  return data;
}

bannerSongHFromJson(BannerSongH data, Map<String, dynamic> json) {
  data.br = json['br'];
  data.fid = json['fid'];
  data.size = json['size'];
  data.vd = json['vd'];
  return data;
}

Map<String, dynamic> bannerSongHToJson(BannerSongH entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  return data;
}

bannerSongMFromJson(BannerSongM data, Map<String, dynamic> json) {
  data.br = json['br'];
  data.fid = json['fid'];
  data.size = json['size'];
  data.vd = json['vd'];
  return data;
}

Map<String, dynamic> bannerSongMToJson(BannerSongM entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  return data;
}

bannerSongLFromJson(BannerSongL data, Map<String, dynamic> json) {
  data.br = json['br'];
  data.fid = json['fid'];
  data.size = json['size'];
  data.vd = json['vd'];
  return data;
}

Map<String, dynamic> bannerSongLToJson(BannerSongL entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  return data;
}

bannerSongPrivilegeFromJson(
    BannerSongPrivilege data, Map<String, dynamic> json) {
  data.id = json['id'];
  data.fee = json['fee'];
  data.payed = json['payed'];
  data.st = json['st'];
  data.pl = json['pl'];
  data.dl = json['dl'];
  data.sp = json['sp'];
  data.cp = json['cp'];
  data.subp = json['subp'];
  data.cs = json['cs'];
  data.maxbr = json['maxbr'];
  data.fl = json['fl'];
  data.toast = json['toast'];
  data.flag = json['flag'];
  data.preSell = json['preSell'];
  return data;
}

Map<String, dynamic> bannerSongPrivilegeToJson(BannerSongPrivilege entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['fee'] = entity.fee;
  data['payed'] = entity.payed;
  data['st'] = entity.st;
  data['pl'] = entity.pl;
  data['dl'] = entity.dl;
  data['sp'] = entity.sp;
  data['cp'] = entity.cp;
  data['subp'] = entity.subp;
  data['cs'] = entity.cs;
  data['maxbr'] = entity.maxbr;
  data['fl'] = entity.fl;
  data['toast'] = entity.toast;
  data['flag'] = entity.flag;
  data['preSell'] = entity.preSell;
  return data;
}
