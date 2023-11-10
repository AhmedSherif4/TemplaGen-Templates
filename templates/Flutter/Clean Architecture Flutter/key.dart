import 'package:dartz/dartz.dart' hide State;
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecase/base_usecase.dart';
import '../../../../config/base_local_data_source/base_local_data_source.dart';
import '../../../../config/base_remote_data_source/base_remote_data_source.dart';
import '../../../../config/base_repository/base_repository.dart';
import '../../../../core/failure/failure.dart';

part 'data/<{key_sc}>_data_source/<{key_sc}>_local_data_source.dart';
part 'data/<{key_sc}>_data_source/<{key_sc}>_remote_data_source.dart';
part 'data/<{key_sc}>_repository/<{key_sc}>_repository.dart';
part 'domain/<{key_sc}>_base_repository/<{key_sc}>_base_repository.dart';
part 'domain/<{key_sc}>_entity/<{key_sc}>_entity.dart';
part 'domain/<{key_sc}>_model/<{key_sc}>_model.dart';
part 'domain/<{key_sc}>_usecases/<{key_sc}>_usecase.dart';
part 'presentation/<{key_sc}>_screen/<{key_sc}>_screen.dart';
part 'presentation/<{key_sc}>_view_model/<{key_sc}>_bloc.dart';
part 'presentation/<{key_sc}>_view_model/<{key_sc}>_event.dart';
part 'presentation/<{key_sc}>_view_model/<{key_sc}>_state.dart';
part 'presentation/<{key_sc}>_widgets/<{key_sc}>_widgets.dart';
