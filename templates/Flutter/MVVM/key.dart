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

part 'model/data_source/<{key_sc}>_local_data_source.dart';
part 'model/data_source/<{key_sc}>_remote_data_source.dart';
part 'view/screens/<{key_sc}>_screen.dart';
part 'view/widgets/<{key_sc}>_widgets.dart';
part 'view_model/<{key_sc}>_bloc.dart';
part 'view_model/<{key_sc}>_event.dart';
part 'view_model/<{key_sc}>_state.dart';
