import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/values/values.dart';

class ProjectSelectableContainer extends StatelessWidget {
  final bool activated;
  final String header;

  const ProjectSelectableContainer({
    Key? key,
    required this.activated,
    required this.header,
  }) : super(key: key);

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
      child: Container(
          width: double.infinity,
          height: 70,
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
                        color: HexColor.fromHex("80BF6B"),
                      ),
                      child: Center(
                          child: Icon(Icons.done,
                              size: 10, color: Colors.white))),
                  AppSpaces.horizontalSpace20,
                  Text("$header\u{1F389}",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ]),
                SizedBox()
              ])),
    );
  }

  Widget _buildInactiveCard(ValueNotifier<bool> notifier) {
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
          height: 70,
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
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2)),
                ),
                AppSpaces.horizontalSpace20,
                Text(header,
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18)),
              ]),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
