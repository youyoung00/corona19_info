import '../../data/data_source/result.dart';
import '../model/main_info.dart';
import '../repository/info_api_repository.dart';

class GetMainInfoUseCase {
  final InfoApiRepository repository;

  GetMainInfoUseCase(this.repository);

  Future<Result<List<MainInfo>>> call() async {
    final result = await repository.infoHeaderFetch();

    return result.when(success: (mainInfo) {
      return Result.success(mainInfo);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
