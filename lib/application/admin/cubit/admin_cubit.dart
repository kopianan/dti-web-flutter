import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'admin_state.dart';
part 'admin_cubit.freezed.dart';

@injectable
class AdminCubit extends Cubit<AdminState> {
  AdminCubit() : super(const AdminState.initial());

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void sendEmail(String title, String email, {String? sbjct}) async {
    late String subject;
    if (sbjct != null) {
      subject = sbjct;
    } else {
      subject = "Pending Action $title";
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(
          <String, String>{'subject': subject, 'body': ""}),
    );

    await launchUrl(emailLaunchUri);
  }

  void sendWhatsapp(String number) async {
    await launchUrl(Uri.parse("https://api.whatsapp.com/send/?phone=$number"));
  }
}
