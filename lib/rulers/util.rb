module Rulers
  def self.to_underscore(string)
    string
      .gsub(/::/, '/')
      .gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
      .gsub(/([a-z\d])([A-Z])/,'\1_\2')
      .tr("-", "_")
      .downcase
  end
end

var res = [];
json.forEach(function(j){
  var coords = polyline.decode(j.p),
      final = [];

  coords.forEach(function(coord){
    final.push({
      lat: function() {return coord[0];},
      lng: function() { return coord[1];}
     });
  })
  res.push({
    name: j.name,
    city: j.city,
    "area(square meters)": geom.computeArea(final)
  });
})