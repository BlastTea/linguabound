import 'dart:async';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linguabound/blocs/blocs.dart';
import 'package:linguabound/main.dart';
import 'package:linguabound/models/models.dart';
import 'package:linguabound/services/services.dart';
import 'package:linguabound/utils/utils.dart';
import 'package:linguabound/views/fragments/fragments.dart';
import 'package:linguabound/views/widgets/widgets.dart';
import 'package:linguabound_widget/linguabound_widget.dart';
import 'package:m_widget/m_widget.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_page.dart';
part 'detail_meet_page.dart';
part 'assessment_page.dart';
part 'leaderboard_page.dart';
part 'edit_profile_page.dart';
part 'change_password_page.dart';
part 'chatbot_page.dart';

part 'on_boarding_page.dart';

part 'sign_in/sign_up_page.dart';
part 'sign_in/sign_up_successful_page.dart';
part 'sign_in/sign_in_page.dart';
part 'sign_in/sign_up_select_role_page.dart';
