part of '../../<{key_sc}>.dart';

abstract class <{key}>RemoteDataSource{

}

@LazySingleton(as: <{key}>RemoteDataSource)
class <{key}>RemoteDataSourceImpl implements <{key}>RemoteDataSource{
    final BaseRemoteDataSource baseRemoteDataSource;

  <{key}>RemoteDataSourceImpl({required this.baseRemoteDataSource});

}

class _<{key}>Parameter extends Equatable{


 const  _<{key}>Parameter(
    
  );
    @override
  List<Object> get props => [];
}
