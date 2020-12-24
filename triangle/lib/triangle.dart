class Triangle {
  bool triangleCheck(double a, double b, double c)=>a+b>=c&&a+c>=b&&b+c>=a;
  bool equilateral(double a,double b,double c)=>a==b&&a==c;
  bool isosceles(double a,double b,double c)=>(a==b||a==c||b==c)&&triangleCheck(a,b,c);
  bool scalene(double a,double b,double c)=>a!=b&&b!=c&&a!=c&&triangleCheck(a,b,c);
}
