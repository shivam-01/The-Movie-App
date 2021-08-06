import 'package:flutter/material.dart';
import 'package:movieapp/common/constants/size_constants.dart';
import 'package:movieapp/common/extensions/string_extensions.dart';
import 'package:movieapp/common/extensions/size_extensions.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;

  const Button({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Sizes.dimen_16.w),
      margin: EdgeInsets.symmetric(horizontal: Sizes.dimen_20.h),
      height: Sizes.dimen_18.h,
      child: ElevatedButton.icon(
        label: Text(
          text.t(context),
          style: Theme.of(context).textTheme.button,
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
          onPrimary: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        icon: Icon(Icons.play_circle_fill_rounded),
        onPressed: onPressed,
      ),
    );
  }
}
