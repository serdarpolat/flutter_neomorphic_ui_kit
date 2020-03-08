import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double width;
  final double height;
  final Color gradinetLeft;
  final Color gradinetRight;
  final double borderRadius;
  final Color shadowUp;
  final Color shadowDown;
  final Offset offsetUp;
  final Offset offsetDown;
  final double blurRadius;
  final Widget child;

  const GradientButton({
    @required this.width,
    @required this.height,
    this.gradinetLeft = const Color(0xffD54D5B),
    this.gradinetRight = const Color(0xffEE8946),
    this.borderRadius = 8,
    this.shadowUp = const Color(0xffffffff),
    this.shadowDown = const Color(0xffDFE6F0),
    this.offsetUp = const Offset(0, -5),
    this.offsetDown = const Offset(0, 5),
    this.blurRadius = 3,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gradinetLeft,
            gradinetRight,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowUp,
            offset: offsetUp,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: shadowDown,
            offset: offsetDown,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

class FlatColorButton extends StatelessWidget {
  final double width;
  final double height;
  final Color bgColor;
  final double borderRadius;
  final Color shadowUp;
  final Color shadowDown;
  final Offset offsetUp;
  final Offset offsetDown;
  final double blurRadius;
  final Widget child;

  const FlatColorButton({
    @required this.width,
    @required this.height,
    this.bgColor = const Color(0xffF2F3F7),
    this.borderRadius = 8,
    this.shadowUp = const Color(0xffffffff),
    this.shadowDown = const Color(0xffDFE6F0),
    this.offsetUp = const Offset(0, -5),
    this.offsetDown = const Offset(0, 5),
    this.blurRadius = 3,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowUp,
            offset: offsetUp,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: shadowDown,
            offset: offsetDown,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

class FlatColorPressed extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color shadowUp;
  final Color shadowDown;
  final Offset offsetUp;
  final Offset offsetDown;
  final double blurRadius;
  final Widget child;

  const FlatColorPressed({
    @required this.width,
    @required this.height,
    this.borderRadius = 8,
    this.shadowUp = const Color(0xffffffff),
    this.shadowDown = const Color(0xffDFE6F0),
    this.offsetUp = const Offset(0, -5),
    this.offsetDown = const Offset(0, 5),
    this.blurRadius = 3,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            shadowDown,
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            Color(0xffF2F3F7),
            shadowUp,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowUp,
            offset: offsetUp,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: shadowDown,
            offset: offsetDown,
            blurRadius: blurRadius,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
