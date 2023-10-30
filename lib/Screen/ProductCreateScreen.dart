import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Style/Style.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {

  Map<String, String> FormValues ={"Img":"", "ProductCode":"", "ProductName":"", "Qty":"", "TotalPrice":"", "UnitPrice":""};

  InputOnChange(Mapkey, Textvalue){
    setState(() {
      FormValues.update(Mapkey, (value) => Textvalue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Product"),
      ),
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            child: (SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (Textvalue) {
                      InputOnChange("ProductName", Textvalue);
                    },
                    decoration: AppInputDecoration("Product Name"),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (Textvalue) {
                      InputOnChange("ProductCode", Textvalue);
                    },
                    decoration: AppInputDecoration("Product Code"),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (Textvalue) {
                      InputOnChange("Img", Textvalue);
                    },
                    decoration: AppInputDecoration("Product Image"),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (Textvalue) {
                      InputOnChange("UnitPrice", Textvalue);
                    },
                    decoration: AppInputDecoration("Unit Price"),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (Textvalue) {
                      InputOnChange("TotalPrice", Textvalue);
                    },
                    decoration: AppInputDecoration("Total Price"),
                  ),
                  const SizedBox(height: 20,),
                  AppDropDownStyle(
                      DropdownButton(
                          value: FormValues["Qty"],
                          items: const [
                            DropdownMenuItem(child: Text("Select qt"), value: '',),
                            DropdownMenuItem(child: Text("1 pcs"), value: '1 pcs',),
                            DropdownMenuItem(child: Text("2 pcs"), value: '2 pcs',),
                            DropdownMenuItem(child: Text("3 pcs"), value: '3 pcs',),
                            DropdownMenuItem(child: Text("4 pcs"), value: '4 pcs',),
                          ],
                        onChanged: (Textvalue) {
                          InputOnChange("Qty", Textvalue);
                        },
                        underline: Container(),
                        isExpanded: true,
                    )
                  ),
                  const SizedBox(height: 20,),

                  Container(
                      child: ElevatedButton(
                        style: AppButtonStyle(),
                          onPressed: () {}, child: SuccessButtonChild("Submit")))
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}