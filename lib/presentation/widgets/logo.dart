import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movieapp/common/constants/size_constants.dart';
import '../../common/extensions/size_extensions.dart';

class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/img2.svg',
          color: Colors.yellow,
          height: Sizes.dimen_12.h,
        ),
        Text('THE MOVIES', style: Theme.of(context).textTheme.headline4),
      ],
    );
  }
}
