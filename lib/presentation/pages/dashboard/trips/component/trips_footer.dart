import 'package:booking_aja/data/src/img_string.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/config.dart';
import '../trips_cubit.dart';

class TripsFooter extends StatelessWidget {
  const TripsFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          _roomiesList(context),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
        left: AppDimen.w16,
        right: AppDimen.w16,
        top: AppDimen.h24,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Other Matches",
            style: AppFont.h3,
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget _roomiesList(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roommieItem(context),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _roommieItem(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - AppDimen.w38,
      margin: EdgeInsets.only(
        left: AppDimen.w16,
        top: AppDimen.h24,
        bottom: AppDimen.h16,
      ),
      padding: EdgeInsets.only(
        right: AppDimen.w16,
        left: AppDimen.w16,
        bottom: AppDimen.h16,
        top: 49.h,
      ),
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w16),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              ImgString.cittaPlants,
            ),
          ),
          37.0.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Eric",
                style: AppFont.paragraphLargeBold,
              ),
              Text(
                "\$500",
                style: AppFont.paragraphSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
