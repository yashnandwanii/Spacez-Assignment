import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spacez_assignment/app_theme.dart';
import 'package:spacez_assignment/bottom_fixed_container.dart';
import 'package:spacez_assignment/coupon_card.dart';


class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0.0, // Adjusted for shadow
         // Softer shadow
        leadingWidth: 150.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Row(
            children: [
              Flexible(
                flex: 0,
                child: Image.asset(
                  'assets/logo.png',
                  height: 22.h,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.home,
                    color: AppColors.primaryRust,
                    size: 24.sp,
                  ),
                ),
              ),
              SizedBox(width: 6.w),
              Flexible(
                child: Text(
                  'SPACEZ',
                  style: GoogleFonts.kalnia(
                    color: Color.fromRGBO(116, 64, 37, 1),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1.25,
                    height: 1.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        actionsPadding: EdgeInsets.only(right:24.w),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Color.fromRGBO(154, 86, 50, 1),
              size: 24.sp,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Menu clicked - No other screens to navigate to'),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56.h), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 12.h, 20.w, 16.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Back button clicked - No other screens to navigate to'),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xFF646864),
                        size: 24.w,
                        weight: 0.2,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      'Coupons',
                      style: GoogleFonts.lexendDeca(
                        color: Color.fromRGBO(75, 78, 75, 1),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.25
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              children: [
                const CouponCard(),
                SizedBox(height: 16.h),
                const CouponCard(),
                SizedBox(height: 32.h),
                Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  'Payment offers:',
                  style: GoogleFonts.lexendDeca(
                    color: AppColors.textDark,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.h),
                const CouponCard(),
                SizedBox(height: 16.h),
                const CouponCard(),
                  ],
                )
              ],
            ),
          ),
          const BottomFixedContainer(),
        ],
      ),
    );
  }
}
