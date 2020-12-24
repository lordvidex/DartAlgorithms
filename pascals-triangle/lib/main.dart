import 'package:pascals_triangle/pascals_triangle.dart';

void main() {
  final ps = PascalsTriangle();
  List<List<int>> ans = ps.rows(3);
  for(List<int> lis in ans){
    print(lis);
  }
}
