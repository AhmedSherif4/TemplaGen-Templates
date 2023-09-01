part of '../../<{key_sc}>.dart';

@LazySingleton(as: <{key}>BaseRepository)
class <{key}>Repository implements <{key}>BaseRepository{
  final  <{key}>RemoteDataSource remoteDataSource;
  final BaseRepository baseRepository;
  
  <{key}>Repository({
    required this.remoteDataSource,
    required this.baseRepository,
    //local data source if you want handle cached data.
  });

}