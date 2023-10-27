import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final double? sidePadding;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? fieldHeight;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool autofocus;
  final Color? borderColor;
  final String? errorText;
  final String? hintText;
  final double? borderRadius;
  final int? maxLines;
  final int? minLines;
  final Widget? prefix;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final Color? textColor;
  final Color? hintTextColor;
  final Color? labelTextColor;
  final double? fontSize;
  final double? hintFontSize;
  final double? labelFontSize;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final String? labelText;
  final TextDirection? textDirection;
  final double? errorHeight;
  final VoidCallback? onTap;
  final bool? enabled;
  final int? maxLength;
  final TextCapitalization textCapitalization;
  final TextStyle? labelStyle;

  const CustomTextFormField({
    this.autofocus = false,
    this.onTap,
    this.borderColor = kFieldBorderColor,
    this.controller,
    this.fieldHeight = 40,
    this.errorText,
    this.hintText,
    this.borderRadius,
    this.isPassword = false,
    this.keyboardType,
    this.prefix,
    this.suffix,
    this.sidePadding,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.horizontalPadding,
    this.verticalPadding,
    this.fillColor = kWhiteColor,
    this.textColor,
    this.hintTextColor,
    this.onFieldSubmitted,
    this.fontSize,
    this.hintFontSize,
    this.textInputAction,
    this.inputFormatters,
    this.readOnly = false,
    this.labelText,
    this.labelFontSize,
    this.labelTextColor,
    this.textDirection,
    this.errorHeight,
    this.enabled,
    this.maxLength,
    this.textCapitalization = TextCapitalization.none,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: fieldHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
            border: Border.all(color: borderColor ?? kFieldBorderColor, width: 1.0),
            color: fillColor,
          ),
          //padding: EdgeInsets.symmetric(vertical: verticalPadding??8.h,horizontal: horizontalPadding??8.w),
        ),
        Padding(
          // padding: EdgeInsets.only(
          //   top: 10,
          //   left: sidePadding ?? 0,
          //   right: sidePadding ?? 0,
          // ),
          padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 8.h, horizontal: horizontalPadding ?? 8.w),
          child: TextFormField(
            // onTapOutside: (event)=>FocusScope.of(context).unfocus(),
            textCapitalization: textCapitalization,
            enabled: enabled,
            onTap: onTap,
            textDirection: textDirection,
            onFieldSubmitted: onFieldSubmitted,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: isPassword,
            autofocus: autofocus,
            minLines: minLines ?? 1,
            maxLines: maxLines ?? 1,
            style:
                TextStyle(color: textColor ?? kBlackColor, fontSize: fontSize ?? 16.0.sp, fontWeight: FontWeight.w700),
            maxLength: maxLength,
            decoration: InputDecoration(
              counterText: '',
              isDense: true,
              labelText: labelText,
              fillColor: fillColor,
              filled: fillColor == null ? false : true,
              contentPadding: EdgeInsets.zero,
              // contentPadding: EdgeInsets.symmetric(
              //   horizontal: horizontalPadding ?? 5.w,
              //   vertical: verticalPadding ?? 15.h,
              // ),
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //     )),
              // disabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //     )),
              // enabledBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //     )),
              // focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //     )),
              // errorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //     )),
              // focusedErrorBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(borderRadius??8.r)),
              //     borderSide: BorderSide(
              //       color: borderColor!,
              //       width: 1.sp,
              //       style: BorderStyle.solid,
              //     )),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: hintFontSize ?? 14.0.sp, color: hintTextColor ?? kTextVariantColor),
              labelStyle: labelStyle??TextStyle(fontSize: labelFontSize ?? 14.0.sp, color: labelTextColor ?? kTextVariantColor),
              errorStyle: kRegularStyle[kSmallerSize]!.copyWith(
                color: kErrorColor,
                height: errorHeight,
              ),
              suffixIcon: suffix,
              prefixIcon: prefix,
              // prefixIconConstraints: prefix == null
              //     ? null
              //     : BoxConstraints(
              //   maxHeight: 24.w,
              //   maxWidth: (12.17 + (20.0 * 1.0)).w,
              // ),
            ),
            onChanged: onChanged,
            onSaved: onSaved,
            validator: validator,
            textInputAction: textInputAction,
            readOnly: readOnly,
            inputFormatters: inputFormatters ?? [],
          ),
        ),
      ],
    );
  }
}

class AppTextFormField extends StatelessWidget {
  final double? sidePadding;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? fieldHeight;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final bool autofocus;
  final Color? borderColor;
  final Color? unFocusColor;
  final String? errorText;
  final String? hintText;
  final double? borderRadius;
  final int? maxLines;
  final int? minLines;
  final Widget? prefix;
  final Widget? suffix;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(String?)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final Color? textColor;
  final Color? hintTextColor;
  final FontWeight? hintFontWeight;
  final double? fontSize;
  final double? hintFontSize;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final String? labelText;
  final VoidCallback? onComplete;
  final VoidCallback? onTap;
  final bool? enabled;
  final FontWeight fontWeight;

  const AppTextFormField({
    this.autofocus = false,
    this.borderColor = kMediumGreyColor,
    this.unFocusColor = kMediumGreyColor,
    this.onTap,
    this.hintFontWeight,
    this.fontWeight = FontWeight.w400,
    this.enabled,
    this.controller,
    this.fieldHeight,
    this.errorText,
    this.hintText,
    this.borderRadius,
    this.isPassword = false,
    this.keyboardType,
    this.prefix,
    this.suffix,
    this.sidePadding,
    this.maxLines,
    this.minLines,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.horizontalPadding,
    this.verticalPadding,
    this.fillColor,
    this.textColor,
    this.hintTextColor,
    this.onFieldSubmitted,
    this.fontSize,
    this.hintFontSize,
    this.textInputAction,
    this.inputFormatters,
    this.readOnly = false,
    this.labelText,
    this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: sidePadding ?? 0,
        right: sidePadding ?? 0,
      ),
      child: TextFormField(
        // onTapOutside: (event)=>FocusScope.of(context).unfocus(),
        onTap: onTap,
        enabled: enabled,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isPassword,
        //textDirection: TextDirection.rtl,
        autofocus: autofocus,
        onEditingComplete: onComplete,
        minLines: minLines ?? 1,
        maxLines: maxLines ?? 1,
        style: TextStyle(color: textColor ?? kHintTextColor, fontSize: fontSize ?? 14.0.sp, fontWeight: fontWeight),
        // style:  TextStyle(color: textColor??kBlackColor, fontSize: fontSize??14.0.sp),
        decoration: InputDecoration(
          labelText: labelText,
          fillColor: fillColor,
          isDense: true,
          filled: fillColor == null ? false : true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 5.w,
            vertical: verticalPadding ?? 15.h,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: borderColor!,
                width: 1.sp,
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: unFocusColor!,
                width: 1.sp,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: borderColor!,
                width: 1.sp,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: borderColor!,
                width: 1.sp,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: borderColor!,
                width: 1.sp,
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8.r)),
              borderSide: BorderSide(
                color: borderColor!,
                width: 1.sp,
                style: BorderStyle.solid,
              )),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: hintFontSize ?? 14.0.sp,
              color: hintTextColor ?? kHintTextColor,
              fontWeight: hintFontWeight ?? FontWeight.w400),
          errorStyle: const TextStyle(color: Colors.red),
          suffixIcon: suffix,
          prefixIcon: prefix,
        ),
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        textInputAction: textInputAction,
        readOnly: readOnly,
        inputFormatters: inputFormatters ?? [],
      ),
    );
  }
}
