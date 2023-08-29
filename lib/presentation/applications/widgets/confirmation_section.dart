import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ConfirmationSection extends StatefulWidget {
  const ConfirmationSection({Key? key, required this.visa}) : super(key: key);
  final VisaApplicationModel visa;
  // final AdminActionCubit reviewCubit;
  @override
  State<ConfirmationSection> createState() => _ConfirmationSectionState();
}

class _ConfirmationSectionState extends State<ConfirmationSection> {
  final _priceController = TextEditingController();

  final _rejectController = TextEditingController();

  final _priceKey = GlobalKey<FormState>();

  final _rejectKey = GlobalKey<FormState>();
  int selectedReview = 0;

  @override
  Widget build(BuildContext context) {
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
                              toolbarOptions: null,
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
                      // await paymentButton(
                      //   context,
                      //   double.parse(_priceController.text),
                      //   widget.reviewCubit,
                      // );
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
              visible:
                  widget.visa.status == "Submitted" || (selectedReview == 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Reason for Rejection",
                            style: TextStyle(fontWeight: FontWeight.bold)),
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
                          dialogType: DialogType.question,
                          animType: AnimType.scale,
                          headerAnimationLoop: true,
                          title: 'Rejection',
                          desc:
                              'Are you sure want to REJECT this application ? Please double check the Rejection Reason',
                          btnOkOnPress: () {
                            // widget.reviewCubit.rejectDocument(
                            //     firebaseDocId: widget.visa!.firebaseDocId!,
                            //     status: StatusEnum.rejected,
                            //     rejectionNote: _rejectController.text,
                            //     isPassport: widget.visa!.title!
                            //             .toLowerCase()
                            //             .contains('passport')
                            //         ? true
                            //         : false);
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
      headerAnimationLoop: true,
      title: '',
      padding: const EdgeInsets.all(10),
      desc:
          'DoorToID will charge $symbol ${NumberFormat.currency(symbol: symbol, decimalDigits: 2, customPattern: "#,###,###").format(price)}  for this application. Are you sure?',
      btnOkOnPress: () {
        // cubit.reviewOkForPayment(
        //     firebaseDocId: widget.visa!.firebaseDocId!,
        //     status: StatusEnum.pendingPayment,
        //     priceInUsd: _priceController.text,
        //     isPassport: widget.visa!.title!.toLowerCase().contains('passport')
        //         ? true
        //         : false);
      },
      btnOkColor: Colors.blue,
      btnCancelOnPress: () {},
      btnOkText: "Ok",
    ).show();
  }
}
