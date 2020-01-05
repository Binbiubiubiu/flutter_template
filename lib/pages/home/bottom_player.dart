import 'package:flutter/material.dart';

class BottomPlayer extends StatefulWidget {
  @override
  _BottomPlayerState createState() => _BottomPlayerState();
}

class _BottomPlayerState extends State<BottomPlayer>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                  padding: const EdgeInsets.all(0),
//                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.play_circle_outline),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
//                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(Icons.playlist_play),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
