import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/app_padding.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';
import 'widgets/custom_categorieswidget.dart';
import 'widgets/custom_product_widget.dart';
import 'widgets/custom_search_and_filter_widget.dart';
import 'widgets/custom_welcome_and_notification_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.horizontalPadding,
            vertical: context.verticalPadding,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomWelcomeAndNotificationWidget(),
                    context.verticalSpace(24),
                    const CustomSearchAndFilterWidget(),
                    context.verticalSpace(24),
                    Text('Categories', style: context.homeBody),
                    context.verticalSpace(24),
                    const CustomCategoriesWidget(),
                  ],
                ),
              ),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: context.setWidth(200),
                  crossAxisSpacing: context.setMinSize(8),
                  // crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                ),
                itemBuilder: (context, index) {
                  return const CustomProductWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
