class TreeNodeData {
  String title;
  bool expanded;
  bool checked;
  dynamic extra;
  List<TreeNodeData> children;
  bool showAddButton;
  bool showRemoveButton;

  TreeNodeData({
    required this.title,
    required this.expanded,
    required this.checked,
    required this.children,
    required this.showAddButton,
    required this.showRemoveButton,
    this.extra,
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
        );

  @override
  String toString() {
    return 'TreeNodeData{title: $title, expanded: $expanded, checked: $checked, extra: $extra, ${children.length} children}';
  }
}
