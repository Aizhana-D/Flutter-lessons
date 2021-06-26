part of 'random_block_bloc.dart';

@immutable
class RandomBlockState {
  double? width;
  double? height;
  Color? color;
  //cubic? curv;
  BorderRadiusGeometry? borderRadius;
  RandomBlockState({this.width, this.height, this.color, this.borderRadius});
}
