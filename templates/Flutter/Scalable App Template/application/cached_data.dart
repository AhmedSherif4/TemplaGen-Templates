// key for special data
const cacheDataKey = 'CacheDataKey';
const cacheDataInterval = 60 * 1000; // 1 minute cache in milliseconds

abstract class CachedData {
  Future<YourCustomModel> getData();
  Future<void> saveDataToCache(YourCustomModel data);
  void clearCache();

  void removeFromCache(String key);
}

class CachedDataImpl implements CachedData {
  // run time cache
  Map<String, CachedItem> cacheMap = {};

  @override
  Future<YourCustomModel> getData() async {
    CachedItem? cachedItem = cacheMap[cacheDataKey];

    if (cachedItem != null && cachedItem.isValid(cacheDataInterval)) {
      //return the response from cache
      print('Data got from Cache:${cachedItem.data}');
      return cachedItem.data;
    } else {
      // return an error that cache is not there or its not valid
      print('there is not Data in cache or its not valid');
      throw Exception();
    }
  }

  @override
  Future<void> saveDataToCache(YourCustomModel data) async {
    cacheMap[cacheDataKey] = CachedItem(data);
    print('Data saved in cache: $data');
  }

  @override
  void clearCache() {
    cacheMap.clear();
  }

  @override
  void removeFromCache(String key) {
    cacheMap.remove(key);
  }
}

class CachedItem {
  YourCustomModel data;
  int cacheTime = DateTime.now().millisecondsSinceEpoch;

  CachedItem(this.data);
}

extension CachedItemExtension on CachedItem {
  bool isValid(int expirationTime) {
    int currentTimeInMilliseconds = DateTime.now().millisecondsSinceEpoch;
    return currentTimeInMilliseconds - cacheTime < expirationTime;
    // expirationTime: 60sec
    // currentTimeInMilliseconds: 1:00:00
    // cacheTime: 12:59:30
    // valid till 01:00:30 and then will be not valid
  }
}
