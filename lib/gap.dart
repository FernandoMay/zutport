import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Gap extends StatelessWidget {
  final double size;
  final Axis? axis;
  final double? crossAxisExtent;
  final Color? color;

  const Gap(this.size, {Key? key, this.axis, this.crossAxisExtent, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Axis dir = axis ?? _detectAxis(context) ?? Axis.vertical;
    final double cross = crossAxisExtent ?? double.infinity;
    if (dir == Axis.horizontal) {
      return SizedBox(
        width: size,
        height: cross.isFinite ? cross : null,
        child: color != null ? DecoratedBox(decoration: BoxDecoration(color: color)) : null,
      );
    } else {
      return SizedBox(
        height: size,
        width: cross.isFinite ? cross : null,
        child: color != null ? DecoratedBox(decoration: BoxDecoration(color: color)) : null,
      );
    }
  }

  Axis? _detectAxis(BuildContext context) {
    final renderObject = context.findAncestorRenderObjectOfType<RenderFlex>();
    if (renderObject != null) {
      return renderObject.direction;
    }
    return null;
  }
}
