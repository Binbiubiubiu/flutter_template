import 'package:flutter/material.dart';
import 'package:flutter_template/app_state.dart';
import 'package:flutter_template/model/category.dart';
import 'package:flutter_template/model/event.dart';
import 'package:flutter_template/styleguide.dart';
import 'package:flutter_template/views/event_details/event_details_page.dart';
import 'package:flutter_template/views/homepage/category_widget.dart';
import 'package:flutter_template/views/homepage/home_page_background.dart';
import 'package:provider/provider.dart';

import 'event_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomePageBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "LOCAL EVENTS",
                            style: fadedTextStyle,
                          ),
                          Spacer(),
                          Icon(
                            Icons.person_outline,
                            color: Color(0x99FFFFFF),
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        "What's up",
                        style: whiteHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: categories
                                .map<CategoryWidget>(
                                    (item) => CategoryWidget(category: item))
                                .toList(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) => Column(
                          children: events
                              .where((e) => e.categoryIds
                                  .contains(appState.selectedCategoryId))
                              .map((event) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        EventDetailsPage(event: event)));
                              },
                              child: EventWidget(
                                event: event,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
