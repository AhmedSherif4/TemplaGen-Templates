part of '../../<{key_sc}>.dart';

abstract class <{key}>LocalDataSource{

}

@LazySingleton(as: <{key}>LocalDataSource)
class <{key}>LocalDataSourceImpl implements <{key}>LocalDataSource{
      final BaseLocalDataSource baseLocalDataSource;

  <{key}>LocalDataSourceImpl({required this.baseLocalDataSource});

}