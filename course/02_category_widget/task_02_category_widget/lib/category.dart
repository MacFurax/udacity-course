// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart

  final ColorSwatch color;
  final String name;
  final IconData icon;
  Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon,
  })  : assert(name != null),
        assert(color != null),
        assert(icon != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child: Container( 
        padding: EdgeInsets.all(8.0),
        height: _rowHeight,
        child :InkWell(
          highlightColor: color,
          splashColor: color,
          borderRadius: _borderRadius,
          onTap: (){
            print("I was tapped");
          },
          child: Row(
            children : <Widget>[
              Padding(
                padding: EdgeInsets.only(left:20.0),
                child: Icon(icon, size: 60.0 ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child:Text(name, style: TextStyle( fontSize: 20.0 ),),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
