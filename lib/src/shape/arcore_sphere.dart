import 'package:arcraftlastfinal/src/arcore_material.dart';
import 'package:arcraftlastfinal/src/shape/arcore_shape.dart';

class ArCoreSphere extends ArCoreShape {
  ArCoreSphere({
    this.radius = 0.5,
    required List<ArCoreMaterial> materials,
  }) : super(
          materials: materials,
        );

  final double radius;

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'radius': radius,
      }..addAll(super.toMap());
}
