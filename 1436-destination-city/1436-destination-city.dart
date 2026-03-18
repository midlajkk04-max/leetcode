class Solution {
  String destCity(List<List<String>> paths) {
    Set<String> visited ={};
    Set<String> cities ={};
    paths.forEach((path){
        visited.addAll(path);
        cities.add(path.first);
    });
    return visited.difference(cities).first;
  }
}