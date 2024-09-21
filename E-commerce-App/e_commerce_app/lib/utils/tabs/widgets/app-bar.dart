import 'package:e_commerce_app/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w, top: 10.h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2.h),
            child: Row(
              children: [
                Image.asset(
                  "lib/images/route.png",
                  alignment: Alignment.topLeft,
                  width: 80.w,
                  height: 80.h,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 18.sp),
                  decoration: InputDecoration(
                    hintText: "what do you search for?",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 14.sp),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 70.w,
                      maxWidth: 100.w,
                    ),
                    prefixIcon: ImageIcon(
                      const AssetImage(
                        "lib/images/search_icon.png",
                      ),
                      color: MyColors.blueColor,
                      size: 40.sp,
                    ),
                    contentPadding: const EdgeInsets.only(top: 0),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColors.blueColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.r),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColors.blueColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.r),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: MyColors.blueColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.r),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, CartScreen.routeName);
                },
                icon: const ImageIcon(
                  AssetImage(
                    "lib/images/cart_icon.png",
                  ),
                  color: MyColors.blueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
