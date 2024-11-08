import 'package:flutter/material.dart';
import 'package:flutter_web_base/flutter_web_base.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/nav_titles.dart';
import 'package:portfolio_website_using_flutter_and_firebase/resources/web_colors.dart';

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({
    super.key,
  });

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  int _hoverIndex = -1;

  @override
  Widget build(BuildContext context) {
    return NavBar1(
      title: Center(
        child: Text(
          "Software Devloper",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: "Lufga",
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      showDivider: false,
      navBarActions: [
        for (int i = 0; i < navTitles.length; i++)
          MouseRegion(
            onEnter: (event) => setState(() {
              _hoverIndex = i;
            }),
            onExit: (event) => setState(() {
              _hoverIndex = -1;
            }),
            child: i == 3
                ? TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: WebColors.themeColor),
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Mishad",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: _hoverIndex == i
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontFamily: "Lufga",
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ))
                : Container(
                    width: _hoverIndex == i ? 136 : 105,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: _hoverIndex == i
                          ? Colors.white.withOpacity(0.1)
                          : Colors.transparent,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navTitles[i],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: _hoverIndex == i
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontFamily: "Lufga",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
          ),
      ],
    );
  }
}
