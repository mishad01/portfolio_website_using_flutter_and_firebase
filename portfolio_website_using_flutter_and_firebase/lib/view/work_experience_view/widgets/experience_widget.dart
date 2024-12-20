import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({
    super.key,
    required this.place,
    required this.date,
    required this.profession,
    required this.details,
  });
  final String place;
  final String date;
  final String profession;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              place,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                  fontFamily: "Lufga"),
            ),
            Text(
              date,
              style: TextStyle(
                color: Color(0xff98A2B3),
                fontSize: 13.sp,
                fontFamily: "Lufga",
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              profession,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                  fontFamily: "Lufga"),
            ),
            Text(
              details,
              style: TextStyle(
                color: Color(0xff98A2B3),
                fontSize: 13.sp,
                fontFamily: "Lufga",
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        )
      ],
    );
  }
}
