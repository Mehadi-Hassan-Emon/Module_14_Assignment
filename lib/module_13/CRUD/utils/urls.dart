class Urls{
  static String baseUrl = "http://35.73.30.144:2008/api/v1";//postman baseurl and static dise jate sob jaigai use korte pare
  static String readProduct = '$baseUrl/ReadProduct';
  static String createProduct = '$baseUrl/CreateProduct';
  static String deleteProduct(String id) => '$baseUrl/DeleteProduct/$id';//delete ekta id ache baseurl er pore tai arrow function diye and then laste e id name dise


}