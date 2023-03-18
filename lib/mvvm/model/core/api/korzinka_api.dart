import 'package:dio/dio.dart';
import 'package:korzinkafull/mvvm/model/core/data/models/korzinka_model.dart';


class KorzinkaApi {
  final dio = Dio(BaseOptions(
    baseUrl: "https://api.lebazar.uz/api/v1",
    connectTimeout: const Duration(milliseconds: 6000),
  ));

  Future<List<ListElement>> getKorzinka({
    int offset = 0,
    int limit = 10,
    String search = "",
  }) async {
    final response = await dio.get(
      "/search/product?start=$offset&limit=$limit&searchKey=$search",
      options: Options(headers: {"companyId": 78}),
    );
    //print(response);
    return (response.data["data"]["list"]);
    // return (response.data["data"]["list"] as List)
    //     .map((e) => e["name"] as String)
    //     .toList();
  }
}