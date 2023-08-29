import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/dashboard/pages/section/feedback_card.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackSection extends StatefulWidget {
  const FeedbackSection({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedbackSection> createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {
  final cubit = getIt<OtherCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => cubit,
        child: BlocConsumer<OtherCubit, OtherState>(listener: (context, state) {
          state.maybeMap(orElse: () {
            EasyLoading.dismiss();
          }, loading: (e) {
            EasyLoading.show(maskType: EasyLoadingMaskType.black);
          }, onFeedbackSent: (e) {
            EasyLoading.dismiss();
            AwesomeDialog(
              context: context,
              width: ScreenUtil().screenWidth / 3,
              dialogType: DialogType.SUCCES,
              animType: AnimType.SCALE,
              headerAnimationLoop: true,
              title: 'Thankyou',
              desc:
                  'Your feedback will be reviewed by our customer service and used to improve your experience with us',
              btnOkOnPress: () {},
              btnOkColor: Colors.green,
              btnOkText: 'Back to dashboard',
            ).show();
          });
        }, builder: (context, state) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FeedbackCard(
                imageAsset: 'assets/bubble_chat.webp',
                title: "Need Advice",
                subtitle: "Email Us",
                onTap: () async {
                  await onEmeailUsClicked();
                },
              ),
              SizedBox(width: 30.w),
              FeedbackCard(
                onTap: () async {
                  await onFeedbackClicked(context);
                },
                imageAsset: 'assets/star.webp',
                title: "Tell Us Your Feedback",
                subtitle: "Feedback",
              ),
            ],
          );
        }));
  }

  Future<void> onEmeailUsClicked() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final String emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'team@doortoid.com',
        query: encodeQueryParameters(<String, String>{
          'subject': 'Visa/Stay Permit Inquiry [ / ]',
          'body': ''
        })).toString();
    if (await canLaunch(emailLaunchUri)) {
      await launch(emailLaunchUri);
    } else {
      await launch(emailLaunchUri);
    }
  }

  Future<dynamic> onFeedbackClicked(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Builder(builder: (context) {
            return RatingDialog(
              initialRating: 1.0,
              // your app's name?
              title: const Text(
                'Let us know how we are doing',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor,
                ),
              ),
              message: const Text(
                'We are always trying to improve what we do and your feedback is invaluable',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColor.primaryColor,
                ),
              ),
              // your app's logo?
              image: Image.asset(
                'assets/icons/DTI-White.png',
                width: 150,
                height: 150,
              ),
              submitButtonText: 'Submit Feedback',

              submitButtonTextStyle: const TextStyle(
                color: AppColor.primaryColor,
                fontSize: 20,
              ),
              commentHint: 'Tell us about your experience',
              onSubmitted: (response) {
                // UserFeedback _feedback = UserFeedback(
                //     rating: response.rating, comment: response.comment);
                cubit.sendFeedback(
                  response.comment,
                  response.rating.toInt(),
                );
              },
            );
          });
        });
  }
}
