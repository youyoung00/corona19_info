import '../../data/data_source/result.dart';
import '../model/info.dart';
import '../repository/info_api_repository.dart';

class GetInfosUseCase {
  final InfoApiRepository repository;

  GetInfosUseCase(this.repository);

  Future<Result<List<Info>>> call() async {
    final result = await repository.infoBodyFetch();

    return result.when(success: (info) {
      return Result.success(info);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
