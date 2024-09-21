import 'package:e_commerce_app/data/model/Response/products_response.dart';
import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  Product product;
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      borderRadius: BorderRadius.circular(15.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: Colors.black.withOpacity(0.3),
            width: 1.w,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r),
                    ),
                    child: Image.network(
                      product.imageCover??'',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18.r,
                        child: const Icon(Icons.favorite_border),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    product.title??'',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: MyColors.blueColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "EGP ${product.price}", // Replace with dynamic data
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: MyColors.blueColor,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Review (${product.ratingsAverage})", // Replace with dynamic data
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: MyColors.blueColor,
                        ),
                      ),
                      Image.asset('lib/images/star.png'),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: MyColors.blueColor,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
