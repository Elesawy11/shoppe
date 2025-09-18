import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/themes/app_color.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

class CustomCategoriesWidget extends StatefulWidget {
  const CustomCategoriesWidget({super.key});

  @override
  State<CustomCategoriesWidget> createState() =>
      _CustomCategoriesWidgetState();
}

class _CustomCategoriesWidgetState
    extends State<CustomCategoriesWidget> {
  int selectedIndex = 0;
  String category = 'the first category of the list';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          height: context.setMinSize(44),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              category = 'Category$index';
              return Padding(
                padding: EdgeInsets.only(right: context.setMinSize(8)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      category = 'Category$index';
                      log(selectedIndex.toString());
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.setMinSize(16),
                    ),
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? AppColor.primary
                          : AppColor.white,
                      borderRadius: BorderRadius.circular(
                        context.setMinSize(20),
                      ),
                      border: Border.all(color: AppColor.grayDD),
                    ),
                    child: Center(
                      child: Text(
                        'Category$index',
                        style: context.bodyBold.copyWith(
                          color: selectedIndex == index
                              ? AppColor.white
                              : AppColor.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        context.verticalSpace(24),
        Text(category, style: context.homeBody),
      ],
    );
  }
}
