class SpaceAge {
  Map<String, double> planets = {
    'Mercury':  0.2408467*365.25*24*3600,
'Venus':  0.61519726*365.25*24*3600,
'Earth':  1.0*365.25*24*3600,   
'Mars':  1.8808158*365.25*24*3600,
'Jupiter':  11.862615*365.25*24*3600,
'Saturn':  29.447498*365.25*24*3600,
'Uranus':  84.016846*365.25*24*3600,
'Neptune': 164.79132*365.25*24*3600, 
  };
  double age({String planet, int seconds}){
    double ans = seconds/planets[planet];
    return double.parse(ans.toStringAsFixed(2));
  }
}
