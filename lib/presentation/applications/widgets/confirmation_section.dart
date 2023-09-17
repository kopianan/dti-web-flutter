import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/mixin/core_mixin.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/apps_type.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ConfirmationSection extends StatefulWidget {
  const ConfirmationSection({Key? key, required this.visa, required this.type})
      : super(key: key);
  final AppsType type;
  final VisaApplicationModel visa;
  // final AdminActionCubit reviewCubit;
  @override
  State<ConfirmationSection> createState() => _ConfirmationSectionState();
}

class _ConfirmationSectionState extends State<ConfirmationSection>
    with CoreMixin {
  final _priceController = TextEditingController();

  final _rejectController = TextEditingController();

  final _priceKey = GlobalKey<FormState>();

  final _rejectKey = GlobalKey<FormState>();
  int selectedReview = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateApplicationCubit>(),
      child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
        listener: (context, state) {
          state.maybeMap(orElse: () {
            EasyLoading.dismiss();
          }, onLoading: (e) {
            EasyLoading.show();
          }, onError: (e) {
            EasyLoading.dismiss();
            showErrDialog(
              context,
              title: "Error",
              desc: e.error,
            );
          }, onRejectApplication: (e) async {
            await Future.delayed(const Duration(seconds: 3));
            EasyLoading.dismiss();
            showSuccessDialog(context,
                title: "Rejection",
                desc: 'Success rejected application', btnOkOnPress: () {
              context.read<UpdateApplicationCubit>().getUserAppsWithImages(
                  widget.visa.firebaseDocId!, widget.type);
            });
          }, onPendingPaymentApplication: (e) async {
            await Future.delayed(const Duration(seconds: 3));
            EasyLoading.dismiss();
            showSuccessDialog(context,
                title: "Pending Payment",
                desc: 'Success update application to Pending Payment',
                btnOkOnPress: () {
              context.read<UpdateApplicationCubit>().getUserAppsWithImages(
                  widget.visa.firebaseDocId!, widget.type);
            });
          }, onGetSingleAppsWithImage: (e) async {
            EasyLoading.dismiss();
            getIt<DocumentCubit>()
                .setupApplication(e.singleResponse.visaApplicationModel!);
          });
        },
        builder: (context, state) {
          return Column(
            children: [
              Container(
                  width: double.infinity / 2,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CupertinoSlidingSegmentedControl<int>(
                    thumbColor: AppColor.primaryColor,
                    backgroundColor: CupertinoColors.systemGrey2,
                    groupValue: selectedReview,
                    onValueChanged: (e) {
                      setState(() {
                        selectedReview = e!;
                      });
                    },
                    children: <int, Widget>{
                      0: Text(
                        "OK",
                        style: TextStyle(
                          color: (selectedReview == 0)
                              ? Colors.white
                              : AppColor.primaryColor,
                        ),
                      ),
                      1: Text(
                        "Reject",
                        style: TextStyle(
                          color: (selectedReview == 1)
                              ? Colors.white
                              : AppColor.primaryColor,
                        ),
                      ),
                    },
                  )),
              Visibility(
                visible: selectedReview == 0,
                child: Visibility(
                  visible: widget.visa.status == "Submitted",
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Total Price (IDR)",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 20),
                            Form(
                              key: _priceKey,
                              child: Column(
                                children: [
                                  // Regular way
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    controller: _priceController,
                                    onChanged: (value) {},
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    validator: (e) {
                                      if (e!.isEmpty) {
                                        return "Price can not be empty";
                                      }
                                      if (!e.isNum) {
                                        return "Price must be a number";
                                      }
                                      return null;
                                    },
                                    textInputAction: TextInputAction.done,
                                    autofocus: false,
                                    enableSuggestions: false,
                                    decoration: const InputDecoration(
                                        prefix: Text(
                                          "Rp  ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                        hintText: "Input Price in IDR",
                                        border: OutlineInputBorder()),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      PrimaryButton(
                        width: double.infinity,
                        height: 50,
                        labelStyle: const TextStyle(fontSize: 20),
                        onClick: () async {
                          if (_priceKey.currentState!.validate()) {
                            final price =
                                double.tryParse(_priceController.text);
                            if (price != null) {
                              await paymentButton(context, price);
                            }
                          }
                        },
                        label: 'Reviewed OK for Payment',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: (selectedReview == 1),
                child: Visibility(
                    visible: widget.visa.status == "Submitted" ||
                        (selectedReview == 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Reason for Rejection",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(height: 20),
                              Form(
                                key: _rejectKey,
                                child: TextFormField(
                                  controller: _rejectController,
                                  textInputAction: TextInputAction.newline,
                                  maxLines: 5,
                                  minLines: 3,
                                  textAlignVertical: TextAlignVertical.top,
                                  validator: (e) {
                                    if (e!.isEmpty) {
                                      return "Rejection note can not be empty";
                                    }
                                    return null;
                                  },
                                  // keyboardType: TextInputType.text,

                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(Icons.note_alt_rounded),
                                    hintText: "Rejection Note",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        PrimaryButton(
                          width: double.infinity,
                          height: 50,
                          labelStyle: const TextStyle(fontSize: 20),
                          onClick: () async {
                            if (_rejectKey.currentState!.validate()) {
                              AwesomeDialog(
                                context: context,
                                width: 400,
                                dialogType: DialogType.question,
                                animType: AnimType.scale,
                                headerAnimationLoop: true,
                                title: 'Rejection',
                                desc:
                                    'Are you sure want to REJECT this application ? Please double check the Rejection Reason',
                                btnOkOnPress: () {
                                  context
                                      .read<UpdateApplicationCubit>()
                                      .rejectApplication(
                                        widget.visa.firebaseDocId!,
                                        _rejectController.text,
                                      );
                                },
                                btnCancelOnPress: () {},
                                btnCancelText: "Back",
                                btnOkColor: Colors.green,
                                btnOkText: "Reject",
                              ).show();
                            }
                          },
                          label: 'Rejected',
                        ),
                      ],
                    )),
              ),
            ],
          );
        },
      ),
    );
  }

  Future paymentButton(
    BuildContext context,
    double price,
  ) async {
    var symbol = "Rp";

    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.scale,
      width: 400,
      headerAnimationLoop: true,
      title: '',
      padding: const EdgeInsets.all(10),
      desc:
          'DoorToID will charge $symbol ${NumberFormat.currency(symbol: symbol, decimalDigits: 2, customPattern: "#,###,###").format(price)}  for this application. Are you sure?',
      btnOkOnPress: () {
        context
            .read<UpdateApplicationCubit>()
            .pendingPayment(widget.visa.firebaseDocId!, price);
      },
      btnOkColor: Colors.blue,
      btnCancelOnPress: () {},
      btnOkText: "Ok",
    ).show();
  }
}
