import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailDesc extends StatelessWidget {
  const DetailDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          34.0.height,
          _descTitle(),
          12.0.height,
          _descSubTitle(),
          12.0.height,
          _descMain(),
          20.0.height,
          _descFooter(),
        ],
      ),
    );
  }

  Widget _descTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        "Rommie in Yogyakarta",
        style: AppFont.h3,
      ),
    );
  }

  Widget _descSubTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        "Pakualaman, YK - 3 Weeks",
        style: AppFont.paragraphMediumBold,
      ),
    );
  }

  Widget _descMain() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Expanded(
        child: Text(
          "Hey you, looking for a roommate? We've helped millions across the "
          "nation find their perfect match... and you're next! Hey you, "
          "looking for a roommate? We've helped millions across "
          "the nation find their perfect match... and you're next!",
          style: AppFont.paragraphMedium,
          maxLines: 5,
        ),
      ),
    );
  }

  Widget _descFooter() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tags",
                style: AppFont.paragraphMediumBold,
              ),
            ],
          ),
        ),
        16.0.height,
      ],
    );
  }
}
