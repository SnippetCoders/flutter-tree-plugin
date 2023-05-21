import 'package:flutter/material.dart';

class TreeNodeData {
  String title;
  Widget? leading;
  bool expanded;
  bool checked;
  dynamic extra;
  List<TreeNodeData> children;
  bool showAddButton;
  bool showRemoveButton;
  Widget? addButtonWidget;

  TreeNodeData({
    required this.title,
    required this.expanded,
    required this.checked,
    required this.children,
    required this.showAddButton,
    required this.showRemoveButton,
    this.extra,
    this.leading,
    this.addButtonWidget,
  });

  TreeNodeData.from(TreeNodeData other)
      : this(
          title: other.title,
          expanded: other.expanded,
          checked: other.checked,
          extra: other.extra,
          children: other.children,
          showAddButton: other.showAddButton,
          showRemoveButton: other.showRemoveButton,
          leading: other.leading,
          addButtonWidget: other.addButtonWidget,
        );

  @override
  String toString() {
    return 'TreeNodeData{title: $title, expanded: $expanded, checked: $checked, extra: $extra, ${children.length} children}';
  }
}
