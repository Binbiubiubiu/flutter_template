import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/utils/vw_util.dart';

class RecommendGrid extends StatefulWidget {
  final List<String> tabs;

  const RecommendGrid({Key key, @required this.tabs}) : super(key: key);

  @override
  _RecommendGridState createState() => _RecommendGridState();
}

class _RecommendGridState extends State<RecommendGrid> {
  int _activeIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _activeIndex = 0;
  }

  _renderHeader() {
    Row header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [],
    );
    widget.tabs.asMap().keys.forEach((i) {
      header.children.add(
        GestureDetector(
          onTap: () {
            _activeIndex = i;
            setState(() {});
          },
          child: Transform.scale(
            scale: _activeIndex == i ? 1 : .8,
            child: Text(
              widget.tabs[i],
              style: TextStyle(
                fontSize: 16.0,
                fontWeight:
                    _activeIndex == i ? FontWeight.bold : FontWeight.w400,
              ),
            ),
          ),
        ),
      );

      if (i == widget.tabs.length - 1) return;

      header.children.add(
        Container(
          width: 1.0,
          height: 16.0,
          color: Colors.grey,
          margin: const EdgeInsets.symmetric(horizontal: 8),
        ),
      );
    });

    header.children.addAll([
      Spacer(),
      InkWell(
        radius: 40,
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 2,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[400],
              width: .4,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "歌单广场",
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      )
    ]);
    return header;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 14.0,
      ),
      child: Column(
        children: <Widget>[
          _renderHeader(),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 14),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            children: <Widget>[
              RecommendItem(),
              RecommendItem(),
              RecommendItem(),
              RecommendItem(),
              RecommendItem(),
              RecommendItem(),
            ],
          ),
        ],
      ),
    );
  }
}

class RecommendItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl:
                  "https://p1.music.126.net/ebFrgGdxqmOmUwe9w_GP3g==/109951164488966478.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "ajsldgkjhkjhkjhkjhkjhkjhkjhkhkjhkjhhkjhkjhf",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        )
      ],
    );
  }
}
