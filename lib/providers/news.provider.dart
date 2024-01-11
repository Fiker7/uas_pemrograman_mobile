import 'package:app_berita_flutter/helpers/api.dart';
import 'package:app_berita_flutter/models/topNews.model.dart';
import 'package:app_berita_flutter/utils/const.dart';
import 'package:flutter/foundation.dart';

class NewsProvider with ChangeNotifier {
  bool isLoading = true;
  TopNewsModel? resNews;

  setLoading(data) {
    isLoading = data;
    notifyListeners();
  }

  getTopNews() async {
    //panggil API get News
    final res = await api('${baseUrl}top-headlines?country=us&apiKey=$apiKey');

    if (res.statusCode == 200) {
      resNews = TopNewsModel.fromJson(res.data);
    } else {
      resNews = TopNewsModel();
    }
    isLoading = false;
    notifyListeners();
  }
}
