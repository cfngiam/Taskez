import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/values/values.dart';
import 'package:taskez/widgets/common/green_done_icon.dart';
import 'package:taskez/widgets/common/profile_dummy.dart';

class EmployeeCard extends StatelessWidget {
  final String employeeName;
  final String employeeImage;
  final String employeePosition;
  final Color backgroundColor;
  final bool activated;
  const EmployeeCard(
      {Key? key,
      required this.employeeName,
      required this.employeeImage,
      required this.backgroundColor,
      required this.employeePosition,
      required this.activated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool newBool = this.activated;
    ValueNotifier<bool> _totalDueTrigger = ValueNotifier(newBool);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ValueListenableBuilder(
          valueListenable: _totalDueTrigger,
          builder: (BuildContext context, _, __) {
            return _totalDueTrigger.value
                ? _buildActiveCard(_totalDueTrigger)
                : _buildInactiveCard(_totalDueTrigger);
          }),
    );
  }

  Widget _buildActiveCard(ValueNotifier<bool> notifier) {
    return InkWell(
      onTap: () {
        notifier.value = !notifier.value;
      },
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, AppColors.lightMauveBackgroundColor],
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: HexColor.fromHex("181A1F")),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      ProfileDummy(
                        dummyType: ProfileDummyType.Image,
                        scale: 0.85,
                        color: backgroundColor,
                        image: employeeImage,
                      ),
                      AppSpaces.horizontalSpace20,
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(employeeName,
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.2)),
                            SizedBox(height: 4),
                            Text(employeePosition,
                                style: GoogleFonts.lato(
                                    color: HexColor.fromHex("5A5E6D")))
                          ])
                    ]),
                    Align(
                        alignment: Alignment.topCenter,
                        child: GreenDoneIcon())
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInactiveCard(ValueNotifier<bool> notifier) {
    return InkWell(
      onTap: () {
        notifier.value = !notifier.value;
      },
      child: Container(
        width: double.infinity,
        height: 80,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AppColors.primaryBackgroundColor,
            borderRadius: BorderRadius.circular(16)),
        child: Row(children: [
          ProfileDummy(
            dummyType: ProfileDummyType.Image,
            scale: 0.85,
            color: backgroundColor,
            image: employeeImage,
          ),
          AppSpaces.horizontalSpace20,
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(employeeName,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.4)),
                Text(employeePosition,
                    style: GoogleFonts.lato(
                        color: HexColor.fromHex("5A5E6D")))
              ])
        ]),
      ),
    );
  }
}
