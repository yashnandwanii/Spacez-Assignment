import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez_assignment/app_theme.dart';

class BottomFixedContainer extends StatelessWidget {
  const BottomFixedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          color: AppColors.successGreen,
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/offer_filled.png',
                width: 16.w,
                height: 16.h,
                color: Colors.white,
              ),
              SizedBox(width: 8.w),
              Text(
                'Book now & Unlock exclusive rewards!',
                style: GoogleFonts.lexendDeca(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹19,500',
                        style: GoogleFonts.figtree(
                          color: Color.fromRGBO(184, 43, 20, 1),
                          
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color.fromRGBO(184, 43, 20, 1),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        '₹16,000',
                        style: GoogleFonts.figtree(
                          color: Color.fromRGBO(75, 78, 75, 1),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 6.w),

                      Text(
                      'for 2 nights',
                        style: GoogleFonts.lexendDeca(
                        color: Color.fromRGBO(125, 129, 125, 1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    ],
                  ),
                  
                  
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Opening date/guest editor - No other screens to navigate to'),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          '24 Apr - 26 Apr | 8 guests',
                          style: GoogleFonts.lexendDeca(
                            color: Color.fromRGBO(125, 129, 125, 1),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            decorationColor: Color.fromRGBO(125, 129, 125, 1),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Icon(Icons.edit_square, size: 16.sp, color: Color.fromRGBO(125, 129, 125, 1)),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Reservation confirmed - No other screens to navigate to'),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(193, 107, 62, 1),
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r),
                    side: BorderSide(
                      color: Color.fromRGBO(193, 107, 62, 1),
                      width: 2.w,
                    ),
                  ),
                  elevation: 0,
                  minimumSize: Size(100.w, 40.h),
                ),
                child: Text(
                  'Reserve',
                  style: GoogleFonts.lexendDeca(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}