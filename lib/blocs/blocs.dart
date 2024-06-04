import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:linguabound/models/models.dart';
import 'package:linguabound/services/services.dart';
import 'package:linguabound/utils/utils.dart';
import 'package:linguabound/views/pages/pages.dart';
import 'package:linguabound_widget/linguabound_widget.dart';
import 'package:m_widget/m_widget.dart';

part 'authentication_bloc/authentication_bloc.dart';
part 'authentication_bloc/authentication_event.dart';
part 'authentication_bloc/authentication_state.dart';

part 'leaderboard_bloc/leaderboard_bloc.dart';
part 'leaderboard_bloc/leaderboard_event.dart';
part 'leaderboard_bloc/leaderboard_state.dart';
