part of '../../<{key_sc}>.dart';


@LazySingleton()
class <{key}>UseCase extends BaseUseCase/* </*1 */,/*2 */ > */ {
  final <{key}>BaseRepository repository;

  <{key}>UseCase(
      {required this.repository});

  @override
  Future<Either<Failure, dynamic>> call(parameter) {
    // TODO: implement call
    throw UnimplementedError();
  }

/*   @override
  Future<Either<Failure,/*1 */ >> call(/*2 */ parameter) async {
    return await repository./*3 */(
      parameter,
    );
  } */
}
