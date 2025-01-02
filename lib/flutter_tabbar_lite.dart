library flutter_custom_tabbar;

import 'package:flutter/material.dart';

class FlutterTabBarLite extends StatefulWidget {
  final bool scrollable;
  final List<String>? titles;
  final List<IconData>? prefixIcons;
  final List<IconData>? suffixIcons;
  final Color? backgroundColor;
  final Color selectedTextColor;
  final Color unselectedItemTextColor;
  final Color selectedItemBgColor;
  final Color unselectedItemBgColor;
  final double selectedFontSize;
  final double unselectedFontSize;
  final Function(int index)? onTabChange;
  final Duration animationDuration;
  final LinearGradient? gradient;
  final EdgeInsets padding;
  final EdgeInsets itemPadding;
  final EdgeInsets itemMargin;
  final double iconSize;
  final double? spaceBetweenIconAndText;
  final Axis axis;
  final WrapAlignment? alignment;
  final VerticalDirection? verticalDirection;
  final bool animateItemSize;

  // const FlutterTabBarLite._internal({
  //   super.key,
  //   this.enableScroll = false,
  //   this.titles = const ["Tab 1", "Tab 2", "Tab 3"],
  //   this.prefixIcons,
  //   this.suffixIcons,
  //   this.backgroundColor = Colors.blue,
  //   this.selectedTextColor = Colors.black87,
  //   this.unselectedItemTextColor = Colors.white,
  //   this.selectedItemBgColor = Colors.white,
  //   this.unselectedItemBgColor = Colors.transparent,
  //   this.onTabChange,
  //   this.animationDuration = const Duration(milliseconds: 300),
  //   this.padding = const EdgeInsets.symmetric(horizontal: 4),
  //   this.itemPadding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
  //   this.itemMargin = const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
  //   this.iconSize = 20.0,
  //   this.gradient,
  //   this.spaceBetweenIconAndText = 4.0,
  //   this.axis = Axis.horizontal,
  // });

  //constructor _internal
  FlutterTabBarLite._internal({
    Key? key,
    required this.scrollable,
    required this.titles,
    required this.prefixIcons,
    required this.suffixIcons,
    required this.backgroundColor,
    required this.selectedTextColor,
    required this.unselectedItemTextColor,
    required this.selectedItemBgColor,
    required this.unselectedItemBgColor,
    required this.selectedFontSize,
    required this.unselectedFontSize,
    required this.onTabChange,
    required this.animationDuration,
    required this.padding,
    required this.itemPadding,
    required this.itemMargin,
    required this.iconSize,
    required this.gradient,
    required this.spaceBetweenIconAndText,
    required this.axis,
    this.alignment,
    this.verticalDirection,
    required this.animateItemSize,
  });

  //factory for horizontal tab
  factory FlutterTabBarLite.horizontal({
    Key? key,
    bool scrollable = false,
    List<String>? titles,
    List<IconData>? prefixIcons,
    List<IconData>? suffixIcons,
    Color? backgroundColor = Colors.blue,
    Color selectedTextColor = Colors.black87,
    Color unselectedItemTextColor = Colors.white,
    Color selectedItemBgColor = Colors.white,
    Color unselectedItemBgColor = Colors.transparent,
    double selectedFontSize = 16,
    double unselectedFontSize = 14,
    Function(int index)? onTabChange,
    Duration animationDuration = const Duration(milliseconds: 300),
    LinearGradient? gradient,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 4),
    EdgeInsets itemPadding =
        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    EdgeInsets itemMargin =
        const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
    double iconSize = 20.0,
    double? spaceBetweenIconAndText = 4.0,
    bool animateItemSize = true,
  }) {
    return FlutterTabBarLite._internal(
      key: key,
      scrollable: scrollable,
      titles: titles,
      prefixIcons: prefixIcons,
      suffixIcons: suffixIcons,
      backgroundColor: backgroundColor,
      selectedTextColor: selectedTextColor,
      unselectedItemTextColor: unselectedItemTextColor,
      selectedItemBgColor: selectedItemBgColor,
      unselectedItemBgColor: unselectedItemBgColor,
      onTabChange: onTabChange,
      animationDuration: animationDuration,
      padding: padding,
      itemPadding: itemPadding,
      itemMargin: itemMargin,
      iconSize: iconSize,
      gradient: gradient,
      spaceBetweenIconAndText: spaceBetweenIconAndText,
      axis: Axis.horizontal,
      selectedFontSize: selectedFontSize,
      unselectedFontSize: unselectedFontSize,
      animateItemSize: animateItemSize,
    );
  }

  //factory for vertical tab
  factory FlutterTabBarLite.vertical({
    Key? key,
    List<String>? titles,
    List<IconData>? prefixIcons,
    List<IconData>? suffixIcons,
    Color? backgroundColor = Colors.blue,
    Color selectedTextColor = Colors.black87,
    Color unselectedItemTextColor = Colors.white,
    Color selectedItemBgColor = Colors.white,
    Color unselectedItemBgColor = Colors.transparent,
    Function(int index)? onTabChange,
    Duration animationDuration = const Duration(milliseconds: 300),
    LinearGradient? gradient,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
    EdgeInsets itemPadding =
        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    EdgeInsets itemMargin =
        const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
    double iconSize = 20.0,
    double? spaceBetweenIconAndText = 4.0,
    WrapAlignment alignment = WrapAlignment.center,
    VerticalDirection verticalDirection = VerticalDirection.down,
    double selectedFontSize = 16,
    double unselectedFontSize = 14,
    bool animateItemSize = true,
  }) {
    return FlutterTabBarLite._internal(
      key: key,
      scrollable: false,
      titles: titles,
      prefixIcons: prefixIcons,
      suffixIcons: suffixIcons,
      backgroundColor: backgroundColor,
      selectedTextColor: selectedTextColor,
      unselectedItemTextColor: unselectedItemTextColor,
      selectedItemBgColor: selectedItemBgColor,
      unselectedItemBgColor: unselectedItemBgColor,
      onTabChange: onTabChange,
      animationDuration: animationDuration,
      padding: padding,
      itemPadding: itemPadding,
      itemMargin: itemMargin,
      iconSize: iconSize,
      gradient: gradient,
      spaceBetweenIconAndText: spaceBetweenIconAndText,
      axis: Axis.vertical,
      alignment: alignment,
      verticalDirection: verticalDirection,
      selectedFontSize: selectedFontSize,
      unselectedFontSize: unselectedFontSize,
      animateItemSize: animateItemSize,
    );
  }

  @override
  State<FlutterTabBarLite> createState() => _FlutterTabBarLiteState();
}

class _FlutterTabBarLiteState extends State<FlutterTabBarLite> {
  final ValueNotifier<bool> isStart = ValueNotifier(true);
  final ValueNotifier<int> selectedTabIndex = ValueNotifier<int>(0);
  final backUpTabs = const ["Tab 1", "Tab 2", "Tab 3"];
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

    int itemsCount = backUpTabs.length;
    bool isAllNull = true;
    if (widget.titles != null) {
      itemsCount = widget.titles!.length;
      isAllNull = false;
    } else if (widget.prefixIcons != null) {
      itemsCount = widget.prefixIcons!.length;
      isAllNull = false;
    } else if (widget.suffixIcons != null) {
      itemsCount = widget.suffixIcons!.length;
      isAllNull = false;
    }

    return ValueListenableBuilder<int>(
      valueListenable: selectedTabIndex,
      builder: (context, selectedTabIndexValue, child) {
        return Container(
          padding: widget.padding,
          decoration: BoxDecoration(
              color: widget.gradient == null ? widget.backgroundColor : null,
              borderRadius: BorderRadius.circular(8),
              gradient: widget.gradient),
          child: (widget.axis == Axis.vertical)
              ? Wrap(
                  alignment: widget.alignment!,
                  runSpacing: 0,
                  spacing: 0,
                  verticalDirection: widget.verticalDirection!,
                  children: List<Widget>.generate(itemsCount, (index) {
                    return _buildTabItem(
                      title:
                          isAllNull ? backUpTabs[index] : widget.titles?[index],
                      index: index,
                      selectedTabIndexValue: selectedTabIndexValue,
                      selectedFontSize: 16,
                      unselectedFontSize: 14,
                      animateItemSize: widget.animateItemSize,
                    );
                  }),
                )
              : LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    children: [
                      if (widget.scrollable)
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
                          physics: widget.scrollable
                              ? null
                              : const NeverScrollableScrollPhysics(),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints(minWidth: constraints.maxWidth),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  List<Widget>.generate(itemsCount, (index) {
                                return _buildTabItem(
                                  title: isAllNull
                                      ? backUpTabs[index]
                                      : widget.titles?[index],
                                  index: index,
                                  selectedTabIndexValue: selectedTabIndexValue,
                                  selectedFontSize: 16,
                                  unselectedFontSize: 14,
                                  animateItemSize: widget.animateItemSize,
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                      if (widget.scrollable)
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

  Widget _buildTabItem({
    String? title,
    required int index,
    required int selectedTabIndexValue,
    required double? selectedFontSize,
    required double? unselectedFontSize,
    required bool animateItemSize,
  }) {
    return FlutterTabItem(
      fontSize: selectedTabIndexValue == index ? 14 : 12,
      padding: (selectedTabIndexValue == index || !animateItemSize)
          ? widget.itemPadding.copyWith(
              left: widget.itemPadding.left + 12,
              right: widget.itemPadding.right + 12)
          : widget.itemPadding,
      margin: widget.itemMargin,
      iconSize: widget.iconSize,
      spaceBetweenIconAndText: widget.spaceBetweenIconAndText,
      onTap: () {
        selectedTabIndex.value = index;
        if (widget.onTabChange != null) {
          widget.onTabChange!(index);
        }
      },
      title: title,
      prefixIcon:
          widget.prefixIcons != null ? widget.prefixIcons![index] : null,
      suffixIcon:
          widget.suffixIcons != null ? widget.suffixIcons![index] : null,
      backgroundColor: selectedTabIndexValue == index
          ? widget.selectedItemBgColor
          : widget.unselectedItemBgColor,
      textColor: selectedTabIndexValue == index
          ? widget.selectedTextColor
          : widget.unselectedItemTextColor,
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
  final double fontSize;
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
    this.fontSize = 14,
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
      child: AnimatedSize(
        duration: Duration(milliseconds: 400),
        child: Container(
          margin: margin,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: backgroundColor,
          ),
          padding: padding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (prefixIcon != null) ...[
                Icon(
                  prefixIcon,
                  color: textColor,
                  size: iconSize,
                ),
                const SizedBox(width: 4),
              ],
              if (title != null)
                Text(
                  title!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
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
      ),
    );
  }
}
