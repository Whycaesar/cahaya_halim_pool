import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/contact/contact_item.dart';
import 'package:cahaya_halim_pool/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';

class ContactDetail extends StatefulWidget {
  @override
  _ContactDetailState createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final myControllerName = TextEditingController();
  final myControllerPhone = TextEditingController();
  final myControllerEmail = TextEditingController();
  final myControllerDesc = TextEditingController();
  // Map data;

  @override
  void dispose() {
    myControllerName.dispose();
    myControllerPhone.dispose();
    myControllerEmail.dispose();
    myControllerDesc.dispose();

    super.dispose();
  }

  void validateInput() {
    FormState form = this.formKey.currentState;
    // ScaffoldState scaffold = this.scaffoldKey.currentState;

    // SnackBar message = SnackBar(
    //   content: Text("Proses Validasi Sukses"),
    // );

    if (form.validate()) {
      // scaffold.showSnackBar(message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            // color: Colors.yellow,
            height: MediaQuery.of(context).size.height * 1.5,
            width: MediaQuery.of(context).size.width * 0.5,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Center(
                    child: Container(
                        // color: Colors.amber,
                        child: Image.asset(
                      'images/logo.png',
                      height: 100,
                    )),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ContactItem(
                    getTranslated(context, 'contactus_callus'),
                    "0815-8496-3994",
                    Icons.phone,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ContactItem(
                    getTranslated(context, 'contactus_emailus'),
                    "info@cahayahalimpool.com",
                    Icons.mail_outline,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ContactItem(
                    getTranslated(context, 'contactus_address'),
                    getTranslated(context, 'contactus_address_detail'),
                    Icons.location_on,
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                    )),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 50,
                  ),
                )
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 1.5,
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.transparent,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    getTranslated(context, 'contactus_description'),
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w500,
                      height: 2,
                      letterSpacing: 1.4,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: myControllerName,
                            cursorColor: Colors.blue,
                            autofocus: true,
                            maxLength: 50,
                            // maxLines: 2,
                            style: TextStyle(
                              // height: 2,
                              fontSize: 24,
                              wordSpacing: 5,
                              letterSpacing: 1.4,
                            ),
                            decoration: InputDecoration(
                              hintText:
                                  getTranslated(context, 'contactus_name'),
                              // fillColor: Colors.green,
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                                letterSpacing: 1.4,
                                wordSpacing: 5,
                              ),
                              labelText:
                                  getTranslated(context, 'contactus_full_name'),
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            // ignore: missing_return
                            validator: (String value) {
                              if (value.isEmpty) {
                                return getTranslated(
                                    context, 'contactus_name_alert');
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: myControllerPhone,
                            // autofocus: true,
                            maxLength: 15,

                            // maxLines: 2,
                            style: TextStyle(
                                // height: 0.5,
                                ),
                            decoration: InputDecoration(
                              hintText:
                                  getTranslated(context, 'contactus_phone'),
                              labelText: getTranslated(
                                  context, 'contactus_phone_number'),
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                                letterSpacing: 1.4,
                                wordSpacing: 5,
                              ),
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            // ignore: missing_return
                            validator: (String value) {
                              if (value.isEmpty) {
                                return getTranslated(
                                    context, 'contactus_phone_alert');
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: myControllerEmail,
                            // autofocus: true,
                            maxLength: 100,
                            // maxLines: 2,
                            style: TextStyle(
                                // height: 0.5,
                                ),

                            decoration: InputDecoration(
                              hintText:
                                  getTranslated(context, 'contactus_email'),
                              // border: InputBorder.none,
                              labelText: getTranslated(
                                  context, 'contactus_email_address'),
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                                letterSpacing: 1.4,
                                wordSpacing: 5,
                              ),
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            // ignore: missing_return
                            validator: (String value) {
                              if (value.isEmpty) {
                                return getTranslated(
                                    context, 'contactus_email_alert');
                              }
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: myControllerDesc,
                            // autofocus: true,
                            maxLength: 500,
                            maxLines: 10,
                            style: TextStyle(
                                // height: 0.5,
                                ),

                            decoration: InputDecoration(
                              hintText:
                                  getTranslated(context, 'contactus_comment'),
                              // border: InputBorder.none,
                              labelText: getTranslated(
                                  context, 'contactus_description_form'),
                              labelStyle: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                                letterSpacing: 1.4,
                                wordSpacing: 5,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FlatButton(
                            hoverColor: Colors.transparent,
                            onPressed: () {
                              validateInput();
                              if (formKey.currentState.validate()) {
                                return showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Container(
                                        color: Colors.blueGrey,
                                        child: Text(" Name : " +
                                            myControllerName.text +
                                            '\n' +
                                            " Phone : " +
                                            myControllerPhone.text.toString() +
                                            '\n' +
                                            " Email : " +
                                            myControllerEmail.text +
                                            '\n' +
                                            " Desc : " +
                                            myControllerDesc.text +
                                            "\n \n" +
                                            "We Will Contact You Soon. Thank you, " +
                                            myControllerName.text),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            child: GestureDetector(
                              onTap: () {
                                // DatabaseServices.createAndUpdateForm("1",
                                //     name: "Wahyudy Caesar",
                                //     mail: "whycaesar@outlook.com",
                                //     phone: 085213601586);
                              },
                              child: CallToAction(
                                getTranslated(context, 'contactus_submit'),
                              ),
                            ),
                          ),
                          // Text(data.toString()),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
