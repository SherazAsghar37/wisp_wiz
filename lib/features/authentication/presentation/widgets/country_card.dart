import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wisp_wiz/core/common/extensions/build_context_extensions.dart';
import 'package:wisp_wiz/core/utils/constants/sizes.dart';
import 'package:wisp_wiz/features/authentication/presentation/data/models/country_model.dart';

class CountryCard extends StatelessWidget {
  final CountryModel country;
  final Animation<double> animation;

  const CountryCard({
    super.key,
    required this.country,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 7.h),
          decoration: BoxDecoration(
            color: context.theme.cardColor,
            borderRadius: BorderRadius.circular(AppSizes.md),
          ),
          child: Row(
            spacing: 20.w,
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.sm / 1.5),
                ),
                child: CachedNetworkImage(
                  imageUrl: country.url,
                  fit: BoxFit.fill,
                ),
              ),
              Flexible(
                child: Text(
                  country.name,
                  style: context.theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
