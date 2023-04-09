import 'package:airbnb_redeisgn/pages/data/data.dart';
import 'package:airbnb_redeisgn/pages/home/components/experience_card.dart';
import 'package:airbnb_redeisgn/pages/home/components/product_card.dart';
import 'package:airbnb_redeisgn/pages/home/components/search_portion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchPortion(),
            Padding(
              padding: REdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ExperienceCard(),
                  SizedBox(height: 28.h),
                  Text(
                    "Top-rated experience",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "book serveral activties led by local on your next trip",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 16.h),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: productsList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 3 : 2,
                      mainAxisSpacing: ScreenUtil().setSp(10),
                      crossAxisSpacing: ScreenUtil().setSp(13),
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      ProductModel productModel = productsList[index];
                      return CupertinoButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: ProductCard(
                          productModel: productModel,
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
