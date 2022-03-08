import 'package:corona19_info/data/data_source/corona_api.dart';
import 'package:corona19_info/domain/model/main_info.dart';

import '../../domain/model/info.dart';
import '../../domain/repository/info_api_repository.dart';
import '../data_source/result.dart';

class InfoApiRepositoryImpl implements InfoApiRepository {
  CoronaApi api;

  InfoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<Info>>> infoBodyFetch() async {
    final Result<Map<String, dynamic>> result = await api.infoFetch();

    final List<Info> infoList = [];

    return result.when(
      success: (jsonResult) {
        jsonResult.forEach((key, value) {
          if (key != 'API') {
            infoList.add(Info.fromJson(value));
          }
        });
        print("???????????????");
        print(infoList);
        return Result.success(infoList);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }

  @override
  Future<Result<List<MainInfo>>> infoHeaderFetch() async {
    final Result<Map<String, dynamic>> apiInfo = await api.infoFetch();
    List<MainInfo> heardList = [];

    return apiInfo.when(
      success: (jsonResult) {
        jsonResult.forEach((key, value) {
          if (key == 'API') {
            heardList.add(MainInfo.fromJson(value));
          }
        });

        return Result.success(heardList);
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
