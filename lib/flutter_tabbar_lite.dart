library flutter_custom_tabbar;

import 'package:flutter/material.dart';

class FlutterTabBarLite extends StatefulWidget {
  final bool enableScroll;
  final List<String> titles;
  final List<IconData>? prefixIcons;
  final List<IconData>? suffixIcons;
  final Color? backgroundColor;
  final Color selectedTextColor;
  final Color unselectedItemTextColor;
  final Color selectedItemBgColor;
  final Color unselectedItemBgColor;
  final Function(int index)? onTabChange;
  final Duration animationDuration;
  final LinearGradient? gradient;
  final EdgeInsets padding;
  final EdgeInsets itemPadding;
  final EdgeInsets itemMargin;
  final double iconSize;
  final double? spaceBetweenIconAndText;

  const FlutterTabBarLite({
    super.key,
    this.enableScroll = false,
    this.titles = const ["Tab 1", "Tab 2", "Tab 3"],
    this.prefixIcons,
    this.suffixIcons,
    this.backgroundColor = Colors.blue,
    this.selectedTextColor = Colors.black87,
    this.unselectedItemTextColor = Colors.white,
    this.selectedItemBgColor = Colors.white,
    this.unselectedItemBgColor = Colors.transparent,
    this.onTabChange,
    this.animationDuration = const Duration(milliseconds: 300),
    this.padding = const EdgeInsets.symmetric(horizontal: 4),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    this.itemMargin = const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
    this.iconSize = 20.0,
    this.gradient,
    this.spaceBetweenIconAndText = 4.0,
  });

  @override
  State<FlutterTabBarLite> createState() => _FlutterTabBarLiteState();
}

class _FlutterTabBarLiteState extends State<FlutterTabBarLite> {
  final ValueNotifier<bool> isStart = ValueNotifier(true);
  final ValueNotifier<int> selectedTabIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    controller.addListener(() {
      if (controller.position.atEdge && controller.position.pixels == 0) {
        isStart.value = true;
      } else if (controller.position.atEdge &&
          controller.position.pixels != 0) {
        isStart.value = false;
      }
    });

    return ValueListenableBuilder<int>(
      valueListenable: selectedTabIndex,
      builder: (context, selectedTabIndexValue, child) {
        return Container(
          padding: widget.padding,
          decoration: BoxDecoration(
              color: widget.gradient == null ? widget.backgroundColor : null,
              borderRadius: BorderRadius.circular(8), gradient: widget.gradient),
          child: LayoutBuilder(builder: (context, constraints) {
            return Row(
              children: [
                if (widget.enableScroll)
                  _buildAnimatedIcon(
                    forStart: true,
                    icon: Icons.arrow_left,
                    animationDuration: widget.animationDuration,
                    isStart: isStart,
                  ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    physics: widget.enableScroll
                        ? null
                        : const NeverScrollableScrollPhysics(),
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints(minWidth: constraints.maxWidth),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List<Widget>.generate(widget.titles.length, (index) {
                          return FlutterTabItem(
                            padding: widget.itemPadding,
                            margin: widget.itemMargin,
                            iconSize: widget.iconSize,
                            spaceBetweenIconAndText: widget.spaceBetweenIconAndText,
                            onTap: () {
                              selectedTabIndex.value = index;
                              if (widget.onTabChange != null) {
                                widget.onTabChange!(index);
                              }
                            },
                            title: widget.titles[index],
                            prefixIcon: widget.prefixIcons != null
                                ? widget.prefixIcons![index]
                                : null,
                            suffixIcon: widget.suffixIcons != null
                                ? widget.suffixIcons![index]
                                : null,
                            backgroundColor: selectedTabIndexValue == index
                                ? widget.selectedItemBgColor
                                : widget.unselectedItemBgColor,
                            textColor: selectedTabIndexValue == index
                                ? widget.selectedTextColor
                                : widget.unselectedItemTextColor,
                          );
                        }),
                      ),
                    ),
                  ),
                ),
                if (widget.enableScroll)
                  _buildAnimatedIcon(
                    forStart: false,
                    icon: Icons.arrow_right,
                    animationDuration: widget.animationDuration,
                    isStart: isStart,
                  ),
              ],
            );
          }),
        );
      },
    );
  }

  Widget _buildAnimatedIcon({
    required bool forStart,
    required IconData icon,
    required Duration animationDuration,
    required ValueNotifier<bool> isStart,
  }) {
    return ValueListenableBuilder<bool>(
      valueListenable: isStart,
      builder: (context, isStartValue, child) {
        return AnimatedSize(
          duration: animationDuration,
          child: Visibility(
            visible: forStart ? !isStartValue : isStartValue,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

class FlutterTabItem extends StatelessWidget {
  final Function() onTap;
  final String? title;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  //final bool isSelected;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double iconSize;
  final double? spaceBetweenIconAndText;

  const FlutterTabItem({
    super.key,
    required this.onTap,
    this.title,
    this.prefixIcon,
    this.suffixIcon,
    required this.textColor,
    required this.backgroundColor,
    required this.padding,
    required this.margin,
    required this.iconSize,
    required this.spaceBetweenIconAndText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: backgroundColor,
        ),
        padding: padding,
        child: Row(
          children: [
            if (prefixIcon != null) ...[
              Icon(
                prefixIcon,
                color: textColor,
                size: iconSize,
              ),
              const SizedBox(width: 4),
            ],
            Text(
              title!,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (suffixIcon != null) ...[
              SizedBox(width: spaceBetweenIconAndText),
              Icon(
                suffixIcon,
                color: textColor,
                size: iconSize,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
