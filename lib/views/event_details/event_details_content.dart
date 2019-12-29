import 'package:flutter/material.dart';
import 'package:flutter_template/model/event.dart';
import 'package:flutter_template/model/guest.dart';
import 'package:flutter_template/styleguide.dart';
import 'package:provider/provider.dart';

class EventDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 100),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .2),
          child: Text(
            event.title,
            style: eventWhiteTitleTextStyle,
          ),
        ),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .24),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "_",
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    event.location,
                    style: eventLocationTextStyle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )),
        SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text("GUESTS", style: guestTextStyle),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: guests
                .map(
                  (guest) => Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(text: event.punchLine1, style: punchLine1TextStyle),
              TextSpan(text: event.punchLine2, style: punchLine2TextStyle),
            ]),
          ),
        ),
      ],
    );

    if (event.description.isNotEmpty) {
      column.children.add(Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          event.description,
          style: eventLocationTextStyle,
        ),
      ));
    }

    if (event.galleryImages.isNotEmpty) {
      column.children.add(
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16),
          child: Text(
            "GALLERY",
            style: guestTextStyle,
          ),
        ),
      );
    }

    column.children.add(SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: event.galleryImages
            .map(
              (image) => Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    image,
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    ));

    return SingleChildScrollView(
      child: column,
    );
  }
}
