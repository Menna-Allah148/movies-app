
import 'package:e_commerce_app/data/model/Response/category_or_brand_response.dart';
import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryOrBrandItem extends StatelessWidget {
  Datum categoryOrBrand;
  CategoryOrBrandItem({required this.categoryOrBrand});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
    //       CachedNetworkImage(
    //     imageUrl: "http://via.placeholder.com/350x150",
    //     placeholder: (context, url) => CircularProgressIndicator(),
    //     errorWidget: (context, url, error) => Icon(Icons.error),
    //  ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(categoryOrBrand.image ?? ''),
            radius: 70.r,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          categoryOrBrand.name ?? '',
          textWidthBasis: TextWidthBasis.longestLine,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: MyColors.blueColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
