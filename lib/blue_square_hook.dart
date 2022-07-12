import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BlueSquare extends HookWidget {
  final double size;
  const BlueSquare({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clicks = useState(0);
    final scale = useState(1.0);

    final _controller1 = useAnimationController(
      duration: const Duration(seconds: 1),
      lowerBound: 0.8,
      upperBound: 1.0,
    );

    _controller1.addListener(() {
      scale.value = _controller1.value;
    });

    return AnimatedBuilder(
      animation: _controller1,
      builder: (context, child) {
        return Transform.scale(
          scale: scale.value,
          child: child,
        );
      },
      child: GestureDetector(
        onTap: () {
          clicks.value++;
          _controller1.reverse(from: 1.0);
        },
        child: Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('${clicks.value}'),
          ),
        ),
      ),
    );
  }
}
