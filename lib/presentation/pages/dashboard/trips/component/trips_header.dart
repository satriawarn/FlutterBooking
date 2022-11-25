import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/config/theme/app_dimen.dart';
import 'package:booking_aja/data/src/img_string.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../trips_cubit.dart';

class TripsHeader extends StatelessWidget {
  const TripsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);

    return Expanded(
      child: Column(
        children: [
          _header(),
          _roomiesList(),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.w16, right: AppDimen.w16, top: AppDimen.h60),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Your Roommies",
            style: AppFont.h3,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.ink02,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: AppColor.ink02,
            ),
          ),
        ],
      ),
    );
  }

  Widget _roomiesList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _roommieItem(),
        itemCount: 3,
      ),
    );
  }

  Widget _roommieItem() {
    return Container(
      height: 72.0.h,
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: AppDimen.h16,
        left: AppDimen.w16,
        right: AppDimen.w16,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
        vertical: AppDimen.h8,
      ),
      decoration: BoxDecoration(
        color: AppColor.ink06,
        borderRadius: BorderRadius.circular(AppDimen.w8),
      ),
      child: Row(
        children: [
          _avatar(),
          8.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Testing",
                  style: AppFont.paragraphMediumBold,
                ),
                Text(
                  "Jakarta",
                  style: AppFont.paragraphSmall.copyWith(
                    color: AppColor.ink02,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }

  Widget _avatar() {
    return SizedBox(
      width: 56.w,
      height: 56.h,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 28.w,
              backgroundColor: AppColor.ink03,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 26.w,
              backgroundImage: const AssetImage(ImgString.avatar),
              backgroundColor: AppColor.ink06,
            ),
          ),
        ],
      ),
    );
  }
}
