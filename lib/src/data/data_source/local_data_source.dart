import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/data/network/error_handler.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';

abstract class LocalDataSource {
  Future<HomeResponse> getHome();
  Future<void> saveHomeToCache(HomeResponse homeResponse);
  Future<MenuResponse> getMenu();
  Future<void> saveMenuToCache(MenuResponse menuResponse);
  Future<NewCatReponse> getMenuNew();
  Future<void> saveMenuNewToCache(NewCatReponse newCatReponse);
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

  @override
  Future<MenuResponse> getMenu() async {
    CachedItem? cachedItem = cacheMap[Constants.cacheMenuKey];

    if (cachedItem != null && cachedItem.isValid(Constants.cacheMenuInterval)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.cacheError);
    }
  }

  @override
  Future<void> saveMenuToCache(MenuResponse menuResponse) async {
    cacheMap[Constants.cacheMenuKey] = CachedItem(menuResponse);
  }

  @override
  Future<NewCatReponse> getMenuNew() async {
    CachedItem? cachedItem = cacheMap[Constants.cacheMenuNewKey];

    if (cachedItem != null &&
        cachedItem.isValid(Constants.cacheMenuNewInterval)) {
      return cachedItem.data;
    } else {
      throw ErrorHandler.handle(DataSource.cacheError);
    }
  }

  @override
  Future<void> saveMenuNewToCache(NewCatReponse newCatReponse) async {
    cacheMap[Constants.cacheMenuNewKey] = CachedItem(newCatReponse);
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
