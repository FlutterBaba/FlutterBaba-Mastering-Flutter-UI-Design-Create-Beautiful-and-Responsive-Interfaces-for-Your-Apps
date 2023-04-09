import 'package:airbnb_redeisgn/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../bottom/bottom_bar.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 214.86.h,
                width: 376.w,
                alignment: Alignment.bottomCenter,
                child: Image.asset(image1),
              ),
              SizedBox(height: 32.h),
              Text(
                "Welcome to Airbnb",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 12.h),
              Text(
                "join our community of hosts gusts from 191 countrues around the world.",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 75.h),
              const TextField(
                decoration: InputDecoration(hintText: "Email address"),
              ),
              SizedBox(height: 24.h),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BottomBar(),
                    ),
                  );
                },
                child: Text(
                  "Get Started",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: kWhiteColor, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 42.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: SvgPicture.asset(facebookIcon),
                  ),
                  SizedBox(width: 42.w),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: SvgPicture.asset(appleIcon),
                  ),
                  SizedBox(width: 42.w),
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: SvgPicture.asset(googleIcon),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?\t",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text(
                      "Log in",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: primaryRed),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
