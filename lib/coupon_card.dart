import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez_assignment/app_theme.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Left Side
          ClipPath(
            
            child: Container(
              width: 80.w,
              color: AppColors.primaryRust,
              child: Center(
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    '₹6,900',
                    style: GoogleFonts.libreCaslonText(
                      color: AppColors.priceText,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Separator
          DottedLine(
            direction: Axis.vertical,
            lineLength: 165.h,
            lineThickness: 2.w,
            dashLength: 11.h,
            dashColor: Color(0xFF874B2C),
            dashRadius: 0.0,
            dashGapLength: 6.h,
            dashGapColor: Colors.transparent,
          ),
          // Right Side
          Expanded(
            child: Container(
              // ignore: deprecated_member_use
              color: AppColors.primaryRust.withOpacity(0.1),
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'LONGSTAY',
                        style: GoogleFonts.lexendDeca(
                          color: Color.fromRGBO(75, 78, 75, 1),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Coupon applied successfully!'),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_offer_outlined,
                                size: 15.sp,
                                color: Color.fromRGBO(154, 86, 50, 1),
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Apply',
                              style: GoogleFonts.lexendDeca(
                                color: Color.fromRGBO(154, 86, 50, 1),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
                    style: GoogleFonts.lexendDeca(
                      color: Color.fromRGBO(125, 129, 125, 1),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Divider(color: Colors.grey.shade300),
                  SizedBox(height: 4.h),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Opening coupon details - No other screens to navigate to'),
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Text(
                      'Read more',
                      style: GoogleFonts.lexendDeca(
                        color: AppColors.textGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
