import 'package:corona19_info/domain/model/main_info.dart';

import '../../data/data_source/result.dart';
import '../model/info.dart';

abstract class InfoApiRepository {
  Future<Result<List<Info>>> infoBodyFetch();
  Future<Result<List<MainInfo>>> infoHeaderFetch();
}
