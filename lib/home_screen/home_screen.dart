import 'package:basic_todo_app/home_screen/home_controller.dart';
import 'package:basic_todo_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xffeff4fa),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: context.height - 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        'General questions',
                        style: GoogleFonts.styleScript().copyWith(
                          fontSize: 32,
                          color: AppColors.goldenColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    for (int i = 0; i < controller.todoList.length; i++) ...[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Obx(
                              () => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          controller.todoList[i]['question'],
                                          style: GoogleFonts.albertSans().copyWith(
                                            color: AppColors.blackColor,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      // InkWell(
                                      //   onTap: () {
                                      //     controller.showDetails(i);
                                      //   },
                                      //   child: Obx(
                                      //         () => (controller.selectedIndex.value != i)
                                      //         ? Transform(
                                      //           transform: Translate,
                                      //           child: const Icon(
                                      //                                                       Icons.add_box_outlined,
                                      //                                                       color: AppColors.goldenColor,
                                      //                                                     ),
                                      //         )
                                      //         : const Icon(
                                      //       Icons.indeterminate_check_box_outlined,
                                      //       color: AppColors.goldenColor,
                                      //     ),
                                      //   ),
                                      // ),
                                      InkWell(
                                        onTap: () {
                                          controller.showDetails(i);
                                        },
                                        child: AnimatedRotation(
                                          turns: controller.selectedIndex.value == i ? 0.5 : 0.0,
                                          duration: const Duration(milliseconds: 500),
                                          child: Icon(
                                            controller.selectedIndex.value != i
                                                ? Icons.add_box_outlined
                                                : Icons.indeterminate_check_box_outlined,
                                            color: AppColors.goldenColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  AnimatedSize(
                                    duration: const Duration(milliseconds: 1000),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child: Column(
                                      children: [
                                        if (controller.selectedIndex.value == i) ...[
                                          const SizedBox(height: 8),
                                          const Divider(
                                            color: AppColors.blackColor,
                                            thickness: 0,
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            controller.todoList[i]['description'],
                                            style: GoogleFonts.albertSans().copyWith(
                                              color: AppColors.blackColor,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
