import 'package:controltask/controltask.dart' as controltask;
import 'package:dio/dio.dart';

void main(List<String> arguments) async{
  Dio client = Dio();
  dynamic response = await client.get("https://dummyjson.com/products");
  Map<String,dynamic> data = response.data;
  List<dynamic> products = data["products"];
  List<int> stocks=[];
  for (dynamic s in products)
  {
      int stock = s['stock'];
      stocks.add(stock);
  }
  print(stocks.reduce((a, b) => a+b));
}
