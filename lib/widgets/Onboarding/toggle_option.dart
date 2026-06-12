import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';

class ToggleLabelOption extends StatelessWidget {
  final String label;
  final RxBool? notifierValue;

  final IconData icon;
  final double? margin;

  ToggleLabelOption(
      {Key? key,
      required this.notifierValue,
      required this.label,
      required this.icon,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        notifierValue != null
            ? Obx(() {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: this.margin ?? 8.0),
                  child: MergeSemantics(
                      child: ListTile(
                          title: Row(
                            children: [
                              Icon(icon, color: Colors.white, size: 24),
                              Text(label,
                                  style: GoogleFonts.lato(
                                      fontSize: 18, color: Colors.white)),
                            ],
                          ),
                          trailing: CupertinoSwitch(
                            value: notifierValue!.value,
                            activeColor: AppColors.primaryAccentColor,
                            onChanged: (bool value) {
                              notifierValue!.value = value;
                            },
                          ))),
                );
              })
            : Padding(
                padding: EdgeInsets.symmetric(vertical: this.margin ?? 8.0),
                child: MergeSemantics(
                    child: ListTile(
                        title: Row(
                          children: [
                            Icon(icon, color: Colors.white, size: 24),
                            Text(label,
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                        trailing: SizedBox())),
              ),
        Divider(height: 1, color: HexColor.fromHex("353742"))
      ],
    );
  }
}
