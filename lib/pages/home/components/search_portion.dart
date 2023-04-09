import 'package:airbnb_redeisgn/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchPortion extends StatelessWidget {
  const SearchPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryRed,
      padding: REdgeInsets.only(left: 24, right: 24, bottom: 20, top: 60),
      child: Column(
        children: [
          Text(
            "What can help you find, jiho?",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 24.0.h),
          Container(
            padding:const EdgeInsets.all(5) ,
            decoration: BoxDecoration(
              color: kWhiteColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5.w),
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: kWhiteColor,
                filled: true,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(searchIcon),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(voiceIcon),
                ),
                hintText: "try work trip in paris",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5.w),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
