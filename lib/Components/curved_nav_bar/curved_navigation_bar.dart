import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'src/nav_button.dart';
import 'src/nav_custom_painter.dart';

class CurvedNavigationBar extends StatefulWidget {
  final List<Widget> items;
  final int index;
  final Color color;
  final Color buttonBackgroundColor;
  final Color backgroundColor;
  final ValueChanged<int> onTap;
  final Curve animationCurve;
  final Duration animationDuration;
  final double height;

  CurvedNavigationBar({
    Key? key,
    required this.items,
    this.index = 0,
    this.color = Colors.red,
    required this.buttonBackgroundColor,
    this.backgroundColor = Colors.white,
    required this.onTap,
    this.animationCurve = Curves.easeOut,
    this.animationDuration = const Duration(milliseconds: 600),
    this.height = 50.0,
  })  : assert(items != null),
        assert(items.length >= 1),
        assert(0 <= index && index < items.length),
        assert(0 <= height && height <= 75.0),
        super(key: key);

  @override
  CurvedNavigationBarState createState() => CurvedNavigationBarState();
}

class CurvedNavigationBarState extends State<CurvedNavigationBar>
    with SingleTickerProviderStateMixin {
  late double _startingPos;
  int _endingIndex = 0;
  late double _pos;
  double _buttonHide = 0;
  late Widget _icon;
  late AnimationController _animationController;
  late int _length;

  @override
  void initState() {
    super.initState();
    _icon = widget.items[widget.index];
    _length = widget.items.length;
    _pos = widget.index / _length;
    _startingPos = widget.index / _length;
    _animationController = AnimationController(vsync: this, value: _pos);
    _animationController.addListener(() {
      setState(() {
        _pos = _animationController.value;
        final endingPos = _endingIndex / widget.items.length;
        final middle = (endingPos + _startingPos) / 2;
        if ((endingPos - _pos).abs() < (_startingPos - _pos).abs()) {
          _icon = widget.items[_endingIndex];
        }
        _buttonHide =
            (1 - ((middle - _pos) / (_startingPos - middle)).abs()).abs();
      });
    });
  }

  @override
  void didUpdateWidget(CurvedNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.index != widget.index) {
      final newPosition = widget.index / _length;
      _startingPos = _pos;
      _endingIndex = widget.index;
      _animationController.animateTo(newPosition,
          duration: widget.animationDuration, curve: widget.animationCurve);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [

                Colors.white,
                Colors.red.withOpacity(.9),
              ],
            stops: [0.25, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated
          )
        ),
      height: widget.height,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned(
            bottom: -40 - (75.0 - widget.height),
            left: Directionality.of(context) == TextDirection.rtl
                ? null
                : _pos * size.width,
            right: Directionality.of(context) == TextDirection.rtl
                ? _pos * size.width
                : null,
            width: size.width / _length,
            child: Center(
              child: Transform.translate(
                offset: Offset(
                  0,
                  -(1 - _buttonHide) * 80,
                ),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.blue.withOpacity(.1),
                                  child: Material(
                    color: widget.buttonBackgroundColor,
                    type: MaterialType.circle,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: _icon,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0 - (75.0 - widget.height),
            child: CustomPaint(
              painter: NavCustomPainter(
                  _pos, _length, widget.color, Directionality.of(context)),
              child: Container(
                height: 75.0,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0 - (75.0 - widget.height),
            child: SizedBox(
                height: 90.0,
                child: Row(
                    children: widget.items.map((item) {
                  return NavButton(
                    onTap: _buttonTap,
                    position: _pos,
                    length: _length,
                    index: widget.items.indexOf(item),
                    child: Center(child: item),
                  );
                }).toList())),
          ),
        ],
      ),
    );
  }

  void setPage(int index){
    _buttonTap(index);
  }

  void _buttonTap(int index) {
    if (widget.onTap != null) {
      widget.onTap(index);
    }
    final newPosition = index / _length;
    setState(() {
      _startingPos = _pos;
      _endingIndex = index;
      _animationController.animateTo(newPosition,
          duration: widget.animationDuration, curve: widget.animationCurve);
    });
  }
}
