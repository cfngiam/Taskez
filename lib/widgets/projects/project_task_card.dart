import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/values/values.dart';
import 'package:taskez/widgets/common/green_done_icon.dart';
import 'package:taskez/widgets/common/profile_dummy.dart';

class ProjectTaskCard extends StatelessWidget {
  final bool activated;
  final String header;
  final String backgroundColor;
  final String image;
  final String date;
  const ProjectTaskCard(
      {Key? key,
      required this.date,
      required this.activated,
      required this.header,
      required this.image,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool newBool = this.activated;
    ValueNotifier<bool> _totalDueTrigger = ValueNotifier(newBool);
    return ValueListenableBuilder(
        valueListenable: _totalDueTrigger,
        builder: (BuildContext context, _, __) {
          return Column(
            children: [
              _totalDueTrigger.value
                  ? _buildInactiveCard(_totalDueTrigger)
                  : _buildActiveCard(_totalDueTrigger),
              AppSpaces.verticalSpace10,
            ],
          );
        });
  }

  Widget _buildActiveCard(ValueNotifier<bool> notifier) {
    return InkWell(
      onTap: () {
        notifier.value = !notifier.value;
      },
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: .30,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              backgroundColor: HexColor.fromHex("B1FEE2"),
              icon: Icons.share,
              onPressed: (BuildContext context) {},
            ),
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: HexColor.fromHex("F5A3FF"),
              onPressed: (BuildContext context) {},
            ),
          ],
        ),
        child: Container(
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: AppColors.primaryBackgroundColor,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: ClipOval(
                        child: Center(
                          child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Colors.pink,
                                        AppColors.lightMauveBackgroundColor
                                      ]),
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Container(
                                              width: 12,
                                              height: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape:
                                                      BoxShape.circle)))))),
                        ),
                      ),
                    ),
                    AppSpaces.horizontalSpace20,
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(header,
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
                          Text(date,
                              style: GoogleFonts.lato(
                                  color: HexColor.fromHex("EA9EEE")))
                        ])
                  ]),
                  ProfileDummy(
                      color: HexColor.fromHex(backgroundColor),
                      dummyType: ProfileDummyType.Image,
                      image: this.image,
                      scale: 1.0),
                ])),
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
          height: 100,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.primaryBackgroundColor, width: 4),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryBackgroundColor,
                      ),
                      child: GreenDoneIcon()),
                  AppSpaces.horizontalSpace20,
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(header,
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18)),
                        Text(date,
                            style: GoogleFonts.lato(
                                color: HexColor.fromHex("8ECA84")))
                      ])
                ]),
                ProfileDummy(
                    color: HexColor.fromHex(backgroundColor),
                    dummyType: ProfileDummyType.Image,
                    image: this.image,
                    scale: 1.0),
              ])),
    );
  }
}
