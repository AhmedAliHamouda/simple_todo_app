import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/constants.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';


class CustomRoundedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? pressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Widget? icon;
  final double? width;
  final double? height;
  final bool? isIconLeft;
  final double? fontSize;
  final double radius;
  final bool loading;
  const CustomRoundedButton(
      {required this.pressed,
      this.loading = false,
      this.text,
      this.backgroundColor,
      this.borderColor,
      this.icon,
      this.textColor = kWhiteColor,
      this.width,
      this.isIconLeft = false,
      this.height,
      this.fontSize,
      this.radius = 5});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed ?? () {},
      child: Container(
        width: width,
        height: height ?? 40.h,
        decoration: BoxDecoration(
          color: backgroundColor ?? kPrimaryColor,
          borderRadius: BorderRadius.circular(radius.r),
          border: Border.all(
            color: borderColor ?? kTransparentColor,
          ),
        ),
        child: isIconLeft!
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    icon!,
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                  Text(
                    text!,
                    style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: fontSize ?? 15.sp),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: fontSize ?? 15.sp,
                    ),
                  ),
                  if (icon != null) ...[
                    SizedBox(
                      width: 2.w,
                    ),
                    icon!
                  ],
                ],
              ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  // Button theme
  const CustomButton(
      {required this.onPressed,
      required this.title,
      this.btnIcon,
      this.preBtnIcon,
      this.btnColor = kDefaultButtonBgColor,
      this.btnBorderColor = kDefaultButtonBgColor,
      this.titleColor = kDefaultButtonTextColor,
      this.disabledTitleColor = kDefaultButtonDisabledTextColor,
      this.enableShadow = false,
      this.btnHeight,
      this.btnWidth,
      this.uppercaseTitle = false,
      this.titleSize,
      this.gapSize,
      this.isLoading = false,
      this.enabled = true,
      this.iconRotation = 0.0,
      this.imagePath,
      this.buttonRadius,
      this.disabledBtnColor=kDefaultButtonDisabledBackgroundColor});

  final bool enabled;
  final bool enableShadow;
  final Color btnColor;
  final Color disabledBtnColor;
  final Color btnBorderColor;
  final Color titleColor;
  final Color disabledTitleColor;
  final String title;
  final void Function()? onPressed;
  final double? btnHeight;
  final double? btnWidth;
  final IconData? btnIcon;
  final IconData? preBtnIcon;
  final bool uppercaseTitle;
  final double? titleSize;
  final double? gapSize;
  final bool isLoading;
  final double iconRotation;
  final String? imagePath;
  final double? buttonRadius;
  Widget getTitle() {
    // Add a text widget inside the button
    return Text(
      uppercaseTitle ? title.toUpperCase() : title,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: kSemiBoldStyle[kNormalSize]?.copyWith(
        color: enabled ? titleColor: disabledTitleColor ,
        fontSize: titleSize ?? 14.0.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: btnWidth,
        height: btnHeight,

        // Button border decoration (radius, gradient and shadow)
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonRadius ?? kDefaultButtonRadius),
          color: enabled ?btnColor: disabledBtnColor,
          boxShadow: enableShadow ? kFormShadow : [],
          border: Border.all(color: enabled? btnBorderColor: disabledBtnColor, width: 1.0),
        ),

        // The internal parts: title and action
        child: MaterialButton(
          onPressed: isLoading || !enabled ? null : onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Show the gap and icon only if the button has an icon
              preBtnIcon != null
                  ? Row(
                      children: <Widget>[
                        Transform.rotate(
                          angle: iconRotation,
                          child: Icon(
                            preBtnIcon,
                            color: !enabled ? disabledTitleColor : titleColor,
                            size: titleSize,
                          ),
                        ),
                        SizedBox(width: gapSize ?? kDefaultButtonGapSize)
                      ],
                    )
                  : imagePath != null
                      ? Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 8.w),
                          child: Image.asset(
                            imagePath!,
                            height: 16.h,
                            width: 16.w,
                            color: !enabled ? disabledTitleColor : titleColor,
                          ),
                        )
                      : Container(),

              // Add a text widget inside the button
              getTitle(),

              // Show the gap and icon only if the button has an icon
              btnIcon != null || isLoading ? SizedBox(width: gapSize??kDefaultButtonGapSize) : Container(),
              isLoading
                  ?  SizedBox(
                      height: 20.0.h,
                      width: 20.0.w,
                      child:  CircularProgressIndicator(strokeWidth: 3.0.w, color: enabled?kWhiteColor:kDefaultButtonDisabledTextColor),
                    )
                  : btnIcon != null
                      ? Transform.rotate(
                          angle: iconRotation,
                          child: Icon(
                            btnIcon,
                            color: !enabled ? disabledTitleColor : titleColor,
                            size: titleSize,
                          ),
                        )
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
