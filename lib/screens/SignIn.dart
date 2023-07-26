import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //State Variables for Email and Password
  String email = '';
  String password = '';

  //State Variables for Show and Hide Password
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/sign_in_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 27.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.roboto(
                        color: const Color(0xFF08215E),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 53.8.h,
                    width: 357.w,
                    child: TextField(
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                      onChanged: (_) {
                        setState(() {
                          email = _;
                        });
                      },
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: const BorderSide(
                              color: Color(0xFFF08000),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: const BorderSide(
                              color: const Color(0xFF061A49),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.roboto(
                        color: const Color(0xFF08215E),
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 53.8.h,
                    width: 357.w,
                    child: TextField(
                      obscureText: !isVisible,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 15.sp,
                      ),
                      onChanged: (_) {
                        setState(() {
                          password = _;
                        });
                      },
                      decoration: InputDecoration(
                          suffixIcon: isVisible
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(
                                    CupertinoIcons.eye_slash,
                                    color: Colors.black,
                                  ))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(
                                    CupertinoIcons.eye,
                                    color: Colors.black,
                                  )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: const BorderSide(
                              color: Color(0xFFF08000),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.r),
                            borderSide: const BorderSide(
                              color: const Color(0xFF061A49),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                margin: EdgeInsets.only(right: 35.w),
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {
                      //Navigate to forgot password screen
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.roboto(
                          fontSize: 15.sp,
                          color: const Color(0xFF97C1FF),
                          fontWeight: FontWeight.w700),
                    )),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 113.w,
                    child: Divider(
                      color: Colors.black.withOpacity(0.37),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      "or",
                      style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          color: Colors.black.withOpacity(0.65),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 113.w,
                    child: Divider(
                      color: Colors.black.withOpacity(0.37),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      //Logic for google OAuth
                    },
                    child: Image.asset(
                      "assets/icons/google_logo.png",
                      height: 60.h,
                      width: 60.h,
                    ),
                  ),
                  SizedBox(
                    width: 15.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Logic for Facebook Login
                    },
                    child: Image.asset(
                      height: 60.h,
                      width: 60.h,
                      "assets/icons/facebook_logo.png",
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                width: 357.w,
                height: 46.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color(0xFF08215E))),
                      onPressed: () {
                        //Login for login
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                            fontSize: 25.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      )),
                ),
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("New Here ?",
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(width: 8.w,),
                  TextButton(onPressed: (){
                    //Navigate to Sign Up Screen
                  }, child: Text("Register",
                    style: GoogleFonts.nunito(
                      color: const Color(0xFF97C1FF),
                      fontWeight: FontWeight.w800,
                      fontSize: 16.sp
                    )
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
