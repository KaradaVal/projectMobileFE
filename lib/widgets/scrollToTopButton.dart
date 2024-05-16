import 'package:flutter/material.dart';

class ScrollToTopButton extends StatefulWidget {
  final ScrollController scrollController;

  const ScrollToTopButton({Key? key, required this.scrollController})
      : super(key: key);

  @override
  _ScrollToTopButtonState createState() => _ScrollToTopButtonState();
}

class _ScrollToTopButtonState extends State<ScrollToTopButton> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (widget.scrollController.offset >
            widget.scrollController.position.minScrollExtent &&
        !widget.scrollController.position.outOfRange) {
      if (!_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    } else {
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isVisible
        ? FloatingActionButton.small(
            onPressed: () {
              // Scroll to the top of the list
              widget.scrollController.animateTo(
                0.0,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Icon(Icons.keyboard_arrow_up_rounded),
          )
        : Container();
  }
}
