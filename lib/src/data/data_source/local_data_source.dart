import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/data/network/error_handler.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';

abstract class LocalDataSource {
  Future<HomeResponse> getHome();
  Future<void> saveHomeToCache(HomeResponse homeResponse);
  void clearCache();
  void removeFromCache(String key);
}

class LocalDataSourceImplementer implements LocalDataSource {
  Map<String, CachedItem> cacheMap = {};

  @override
  void clearCache() {
    cacheMap.clear();
  }

  @override
  Future<HomeResponse> getHome() async {
    CachedItem? cachedItem = cacheMap[Constants.cacheHomeKey];

    if (cachedItem != null && cachedItem.isValid(Constants.cacheHomeInterval)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.cacheError);
    }
  }

  @override
  void removeFromCache(String key) {
    cacheMap.remove(key);
  }

  @override
  Future<void> saveHomeToCache(HomeResponse homeResponse) async {
    cacheMap[Constants.cacheHomeKey] = CachedItem(homeResponse);
  }
}

class CachedItem {
  dynamic data;
  int cacheTime = DateTime.now().millisecondsSinceEpoch;
  CachedItem(this.data);
}

extension CachedItemExtension on CachedItem {
  bool isValid(int expirationTime) {
    int currentTimeInMilliSeconds = DateTime.now().millisecondsSinceEpoch;
    bool isCacheValid = currentTimeInMilliSeconds - expirationTime < cacheTime;
    return isCacheValid;
  }
}
