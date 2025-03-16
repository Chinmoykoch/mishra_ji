import 'package:flutter/material.dart';

// Light theme app bar
final AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Color(0xFFF57C00), // Deep Orange
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.white),
  actionsIconTheme: IconThemeData(color: Colors.white),
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontFamily: 'PlusJakartaSans'
  ),
);

// Dark theme app bar (slightly darker orange)
final AppBarTheme darkAppBarTheme = AppBarTheme(
  backgroundColor: Color(0xFFE65100), // Darker Orange for dark theme
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.white),
  actionsIconTheme: IconThemeData(color: Colors.white),
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontFamily: 'PlusJakartaSans'
  ),
);

// Utility class for building editable app bars (if needed)
class AppBarBuilder {
  // Main app bar with editable title
  static PreferredSizeWidget buildMainAppBar({
    required String title,
    required Function(String) onTitleChanged,
  }) {
    return AppBar(
      backgroundColor: Color(0xFFF57C00),
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {},
      ),
      title: EditableAppBarTitle(
        initialTitle: title,
        onTitleChanged: onTitleChanged,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withAlpha(77),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ),
      ],
    );
  }

  // Order app bar with editable title
  static PreferredSizeWidget buildOrderAppBar({
    required String title,
    required Function(String) onTitleChanged,
    required VoidCallback onBackPressed,
  }) {
    return AppBar(
      backgroundColor: Color(0xFFF57C00),
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: onBackPressed,
      ),
      title: EditableAppBarTitle(
        initialTitle: title,
        onTitleChanged: onTitleChanged,
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: CircleAvatar(
            backgroundColor: Colors.white.withAlpha(77),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

// Custom widget for editable app bar title
class EditableAppBarTitle extends StatefulWidget {
  final String initialTitle;
  final Function(String) onTitleChanged;

  const EditableAppBarTitle({
    super.key,
    required this.initialTitle,
    required this.onTitleChanged,
  });

  @override
  _EditableAppBarTitleState createState() => _EditableAppBarTitleState();
}

class _EditableAppBarTitleState extends State<EditableAppBarTitle> {
  late TextEditingController _controller;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialTitle);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isEditing
        ? TextField(
          controller: _controller,
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
          autofocus: true,
          onSubmitted: (newValue) {
            setState(() {
              _isEditing = false;
              widget.onTitleChanged(newValue);
            });
          },
        )
        : GestureDetector(
          onTap: () {
            setState(() {
              _isEditing = true;
            });
          },
          child: Text(
            _controller.text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
  }
}
