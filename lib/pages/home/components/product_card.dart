import 'package:airbnb_redeisgn/app_style.dart';
import 'package:airbnb_redeisgn/pages/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({super.key, required this.productModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 122.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.w),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(productModel.image),
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            productModel.title,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: primaryRed),
          ),
          subtitle: Text(
            productModel.description,
            style: Theme.of(context).textTheme.bodySmall!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
