import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_template/pages/home/recommend_grid.dart';
import 'package:flutter_template/utils/vw_util.dart';
import 'package:flutter_template/widgets/menu_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Tab> _tabs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabs = [
      Tab(text: '我的'),
      Tab(text: '发现'),
      Tab(text: '云村'),
      Tab(text: '视频'),
    ];
    _tabController = TabController(
      initialIndex: 0,
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: TabBar(
          controller: _tabController,
          tabs: _tabs,
          labelPadding: const EdgeInsets.all(0),
          labelStyle: TextStyle(
            fontSize: px2sp(48),
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: px2sp(40),
          ),
          indicatorColor: Colors.transparent,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children: <Widget>[
            _Bannar(
              banners: [
                "http://p1.music.126.net/QNipVPFuMaZ377cmU-imqg==/109951164598195866.jpg",
                "http://p1.music.126.net/udVxAZCQbhywBAxRxXQmDQ==/109951164596840875.jpg",
                "http://p1.music.126.net/S8hfF6my-l__sllpo4k2tA==/109951164598412283.jpg",
                "http://p1.music.126.net/RHz3pD0lqpYoKePAkdzY4A==/109951164598422039.jpg",
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MenuButtonWidget(icon: Icon(Icons.menu), text: "每日歌单"),
                  MenuButtonWidget(icon: Icon(Icons.menu), text: "每日歌单"),
                  MenuButtonWidget(icon: Icon(Icons.menu), text: "每日歌单"),
                  MenuButtonWidget(icon: Icon(Icons.menu), text: "每日歌单"),
                  MenuButtonWidget(icon: Icon(Icons.menu), text: "每日歌单"),
                ],
              ),
            ),
            Divider(),
            RecommendGrid(tabs: ["推荐歌单"]),
            RecommendGrid(tabs: ["新碟", "新歌 "]),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: .5,
                color: Theme.of(context).dividerColor,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Image.network(
                    "https://i2.hdslb.com/bfs/face/8944fec41064157b6097c20f48a76acfe3ac391e.png@204w_204h_1c_100q.webp"),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "与我无关",
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Text(
                    "横滑动可以切换歌曲",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.play_circle_outline),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.playlist_play),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bannar extends StatelessWidget {
  final List<String> banners;

  const _Bannar({Key key, this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100.0,
          color: Theme.of(context).primaryColor,
        ),
        AspectRatio(
          aspectRatio: 3,
          child: Swiper(
            itemBuilder: (BuildContext context, int i) {
              return Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    banners[i],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            itemCount: banners.length,
            pagination: new SwiperPagination(),
            autoplay: true,
//            control: new SwiperControl(),
          ),
        ),
      ],
    );
  }
}
