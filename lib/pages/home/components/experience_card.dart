import 'package:airbnb_redeisgn/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: (){},
      padding: EdgeInsets.zero,
      child: Container(
        height: 124.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image2),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.w),
            color: Colors.black38,
          ),
          child: Text(
            "Experiences",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: kWhiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(22),
                ),
          ),
        ),
      ),
    );
  }
}
