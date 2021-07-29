import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CopyRight {
  var height, width;
  CopyRight(this.height, this.width);
  Container copyright() {
    return Container(
      color: Colors.black,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: width, minHeight: height / 16),
        child: Center(
          child: Text(
            "CopyRight \u00a9 2021 onwards, Archit Sangal. All Rights Reserved.",
            style: TextStyle(
                color: Colors.white, fontSize: height / 190 + width / 190),
          ),
        ),
      ),
    );
  }
}
