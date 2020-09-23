import 'package:cahaya_halim_pool/views/contact/contact_item.dart';
import 'package:cahaya_halim_pool/widgets/call_to_action/call_to_action.dart';
import 'package:flutter/material.dart';

class ContactDetailMobile extends StatefulWidget {
  @override
  _ContactDetailMobileState createState() => _ContactDetailMobileState();
}

class _ContactDetailMobileState extends State<ContactDetailMobile> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final myControllerName = TextEditingController();
  final myControllerPhone = TextEditingController();
  final myControllerEmail = TextEditingController();
  final myControllerDesc = TextEditingController();

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
    return Column(
      key: scaffoldKey,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: MediaQuery.of(context).size.height * 1.4,
          width: MediaQuery.of(context).size.width * 0.8,
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              // Center(
              //   child: Container(
              //     color: Colors.amber,
              //     child: Text(
              //       "LOGO",
              //       style: TextStyle(
              //         fontSize: 50,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              ContactItem(
                "Call Us",
                "0815-8496-3994",
                Icons.phone,
              ),
              SizedBox(
                height: 30,
              ),
              ContactItem(
                "Email Us",
                "info@cahayahalimpool.com",
                Icons.mail_outline,
              ),
              SizedBox(
                height: 30,
              ),
              ContactItem(
                "Our Address",
                "South Jakarta - Indonesia",
                Icons.location_on,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          // height: MediaQuery.of(context).size.height * 1.4,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "Do you have questions? Want some free advice for your new Backyard Project? We’ll be happy to schedule a no obligation, one-on-one consultation with you, to help you visualize your dream. Please call us at 0815-8496-3994 or fill out our form.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w500,
                  height: 2,
                  letterSpacing: 1.4,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                          hintText: "Name",
                          // fillColor: Colors.green,
                          labelStyle: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            letterSpacing: 1.4,
                            wordSpacing: 5,
                          ),
                          labelText: "Full Name",
                          counterText: "",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Name Cann\'t be Empty';
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
                          hintText: "Phone",
                          labelText: "Phone Number",
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
                            return 'Phone Number Cann\'t Be Empty';
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
                          hintText: "Email",
                          // border: InputBorder.none,
                          labelText: "Email Address",
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
                            return 'Email Cann\'t Be Empty';
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
                          hintText: "Comments / Questions",
                          // border: InputBorder.none,
                          labelText: "Description",
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
                        child: CallToAction("Submit"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
