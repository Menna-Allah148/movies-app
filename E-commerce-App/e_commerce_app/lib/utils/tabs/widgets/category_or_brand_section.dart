
import 'package:e_commerce_app/data/model/Response/category_or_brand_response.dart';
import 'package:e_commerce_app/utils/tabs/widgets/category_or_brand_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesOrBrandsSection extends StatelessWidget {
  //todo : List<Category & brand>
  List<Datum> list;
  CategoriesOrBrandsSection({required this.list});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210.h,
        child: GridView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contxt, index) {
            return CategoryOrBrandItem(categoryOrBrand: list[index],);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
          ),
        ));
  }
}
