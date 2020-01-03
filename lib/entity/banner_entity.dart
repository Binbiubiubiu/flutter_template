import 'package:flutter_template/generated/json/base/json_convert_content.dart';
import 'package:flutter_template/generated/json/base/json_filed.dart';

class BannerEntity with JsonConvert<BannerEntity> {
  String pic;
  int targetId;
  dynamic adid;
  int targetType;
  String titleColor;
  String typeTitle;
  dynamic url;
  dynamic adurlV2;
  bool exclusive;
  dynamic monitorImpress;
  dynamic monitorClick;
  dynamic monitorType;
  List<dynamic> monitorImpressList;
  List<dynamic> monitorClickList;
  dynamic monitorBlackList;
  dynamic extMonitor;
  dynamic extMonitorInfo;
  dynamic adSource;
  dynamic adLocation;
  DateTime encodeId;
  dynamic program;
  dynamic event;
  dynamic video;
  dynamic dynamicVideoData;
  BannerSong song;
  DateTime bannerId;
  dynamic alg;
  String scm;
  String requestId;
  bool showAdTag;
  dynamic pid;
  dynamic showContext;
  dynamic adDispatchJson;
}

class BannerSong with JsonConvert<BannerSong> {
  String name;
  int id;
  int pst;
  int t;
  List<BannerSongAr> ar;
  List<dynamic> alia;
  int pop;
  int st;
  String rt;
  int fee;
  int v;
  dynamic crbt;
  String cf;
  BannerSongAl al;
  int dt;
  BannerSongH h;
  BannerSongM m;
  BannerSongL l;
  dynamic a;
  String cd;
  int no;
  dynamic rtUrl;
  int ftype;
  List<dynamic> rtUrls;
  int djId;
  int copyright;
  @JSONField(name: "s_id")
  int sId;
  int mark;
  int cp;
  int mv;
  int mst;
  int rtype;
  dynamic rurl;
  int publishTime;
  BannerSongPrivilege privilege;
}

class BannerSongAr with JsonConvert<BannerSongAr> {
  int id;
  String name;
  List<dynamic> tns;
  List<dynamic> alias;
}

class BannerSongAl with JsonConvert<BannerSongAl> {
  int id;
  String name;
  String picUrl;
  List<dynamic> tns;
  @JSONField(name: "pic_str")
  DateTime picStr;
  int pic;
}

class BannerSongH with JsonConvert<BannerSongH> {
  int br;
  int fid;
  int size;
  int vd;
}

class BannerSongM with JsonConvert<BannerSongM> {
  int br;
  int fid;
  int size;
  int vd;
}

class BannerSongL with JsonConvert<BannerSongL> {
  int br;
  int fid;
  int size;
  int vd;
}

class BannerSongPrivilege with JsonConvert<BannerSongPrivilege> {
  int id;
  int fee;
  int payed;
  int st;
  int pl;
  int dl;
  int sp;
  int cp;
  int subp;
  bool cs;
  int maxbr;
  int fl;
  bool toast;
  int flag;
  bool preSell;
}
