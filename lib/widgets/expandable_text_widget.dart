import 'package:delivery_food_app/utils/colors.dart';
import 'package:delivery_food_app/utils/dimensions.dart';
import 'package:delivery_food_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  color: AppColors.paraColor,
                  text: hiddenText
                      ? (firstHalf + "...")
                      : (firstHalf + secondHalf),
                  size: Dimensions.font16,
                ),
                InkWell(
                  onTap: () => {
                    setState(() => {hiddenText = !hiddenText})
                  },
                  child: Row(children: [
                    SmallText(
                      text: hiddenText ? "Show more" : "Show less",
                      size: Dimensions.font16,
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: AppColors.mainColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
