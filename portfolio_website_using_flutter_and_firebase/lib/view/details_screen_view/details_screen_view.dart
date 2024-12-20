import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/assets_path.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';
import 'package:sizer/sizer.dart';

class DetailsScreenView extends StatefulWidget {
  const DetailsScreenView({
    super.key,
  });

  @override
  State<DetailsScreenView> createState() => _DetailsScreenViewState();
}

class _DetailsScreenViewState extends State<DetailsScreenView> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      color: Colors.yellow,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 250), // Adjust duration as needed
            curve: Curves.easeInOut, // Customize the animation curve
            top: isHover
                ? 100
                : MediaQuery.of(context).size.height, // Start from bottom
            left: 1,
            right: 50,
            child: SvgPicture.asset(AssetsPath.v3),
          ),
          //V1C

          isHover
              ? Container()
              : Positioned(
                  top: 1.h,
                  left: 9.8.w,
                  right: 1.h,
                  child: Center(child: SvgPicture.asset(AssetsPath.v1)),
                ),

          //Hello
          Positioned(
            top: 4.h,
            left: 1,
            right: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isHover
                      ? Container()
                      : Container(
                          height: 4.5.h,
                          width: 7.3.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Center(
                            child: Text("Hello!",
                                style: TextStyle(
                                  fontFamily: "Lufga",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                )),
                          ),
                        ),
                  SizedBox(height: 1.5.h),
                  isHover
                      ? Container()
                      : Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I'm ",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 28.sp,
                                        fontWeight: FontWeight.w600,
                                        height: 1),
                                  ),
                                  TextSpan(
                                    text: "Mishad,",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 28.sp,
                                        fontWeight: FontWeight.w600,
                                        color: WebColors.themeColor,
                                        height: 1),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Text(
                                "Software Engineer",
                                style: GoogleFonts.urbanist(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w600,
                                  height: 1,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(height: isHover ? 360 : 115),
                  SvgPicture.asset(AssetsPath.bg1),
                ],
              ),
            ),
          ),

          //person
          Positioned(
            top: 18.h,
            left: 1,
            right: 1,
            child: Center(
              child: Image.asset(
                AssetsPath.mishad,
                width: 752,
                height: 636,
              ),
            ),
          ),

          //Jenny’s
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            top: isHover ? 200 : 400,
            left: 70,
            curve: Curves.easeInOut,
            // right: 910,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsPath.d3),
                SizedBox(height: 13.sp),
                Text(
                  "Jenny’s Exceptional product design\nensure our website’s success.\nHighly Recommended",
                  style: TextStyle(
                    fontFamily: "Lufga",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          //10 years
          AnimatedPositioned(
            duration: Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            top: isHover ? 200 : 400,
            right: 70,
            // right: 910,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset(AssetsPath.star),
                Text(
                  "10 Years",
                  style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  "Experience",
                  style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 400,
            left: 1,
            right: 1,
            child: MouseRegion(
              onEnter: (event) {
                setState(() => isHover = true);
              },
              onExit: (event) {
                setState(() => isHover = false);
              },
              child: Container(
                height: 400,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
