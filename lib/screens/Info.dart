import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  //State Variables for managing Page
  int index = 0;
  final PageController _pageController = PageController();

  void changePage(int pageIndex) {
    _pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void navigateToSignIn() {
    Navigator.pushNamed(context, '/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF08215E),
        body: SafeArea(
          child: Stack(children: [
            PageView(
              onPageChanged: (_) {
                setState(() {
                  index = _;
                });
              },
              controller: _pageController,
              children: [
                Child(
                  index: index,
                  pageChange: changePage,
                  line1:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit.",
                  line2: "Lorem ipsum dolor sit amet consectetur. ",
                  line3:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit. ",
                  imageUrl: "assets/images/info_image1.png",
                  navigateToSignIn: navigateToSignIn,
                ),
                Child(
                  index: index,
                  pageChange: changePage,
                  line1:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit.",
                  line2: "Lorem ipsum dolor sit amet consectetur. ",
                  line3:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit. ",
                  imageUrl: "assets/images/info_image2.png",
                  navigateToSignIn: navigateToSignIn,
                ),
                Child(
                  index: index,
                  pageChange: changePage,
                  line1:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit.",
                  line2: "Lorem ipsum dolor sit amet consectetur. ",
                  line3:
                      "Lorem ipsum dolor sit amet consectetur adi pisicing elit. ",
                  imageUrl: "assets/images/info_image3.png",
                  navigateToSignIn: navigateToSignIn,
                ),
              ],
            ),
            Positioned(
              top: 26.h,
              right: 15.w,
              child: Container(
                height: 38.h,
                width: 94.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1)),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(8, 33, 92, 0.13)),
                    ),
                    onPressed: () {
                      navigateToSignIn();
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.roboto(
                        color: const Color(0xFFFCFCFC),
                        fontSize: 23.sp,
                      ),
                    )),
              ),
            ),
          ]),
        ));
  }
}

class Child extends StatelessWidget {
  int index;
  String line1;
  String line2;
  String line3;
  String imageUrl;
  Function pageChange;
  Function navigateToSignIn;
  Child(
      {super.key,
      required this.index,
      required this.line1,
      required this.line2,
      required this.line3,
      required this.imageUrl,
      required this.pageChange,
      required this.navigateToSignIn});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/green_tick.png",
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(
                width: 7.w,
              ),
              SizedBox(
                width: 390.w,
                child: Text(
                  line1,
                  style: GoogleFonts.roboto(
                      color: const Color(0xFFF7F7F7), fontSize: 19.sp),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/green_tick.png",
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(
                width: 7.w,
              ),
              SizedBox(
                width: 390.w,
                child: Text(
                  line2,
                  style: GoogleFonts.roboto(
                      color: const Color(0xFFF7F7F7), fontSize: 19.sp),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icons/green_tick.png",
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(
                width: 7.w,
              ),
              SizedBox(
                width: 390.w,
                child: Text(
                  line3,
                  style: GoogleFonts.roboto(
                      color: const Color(0xFFF7F7F7), fontSize: 19.sp),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(right: 20.w),
            height: 68.h,
            width: 212.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.r),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFF08000))),
                  onPressed: () {
                    if (index != 2) {
                      pageChange(index + 1);
                    } else {
                      navigateToSignIn();
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        index == 2 ? "Get Started" : "Next",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 33,
                        color: Colors.white,
                      )
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
