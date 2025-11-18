import 'package:flutter/material.dart';
import 'package:penaltee/widgets/left_drawer.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:penaltee/screens/menu.dart';

class ProductFormPage extends StatefulWidget {
  const ProductFormPage({super.key});

  @override
  State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  String _category = "Shoes"; // default
  String _thumbnail = "";
  bool _isFeatured = false; // default

  final List<String> _categories = [
    'Shoes',
    'Cap',
    'Jersey',
    'Ball',
  ];
  @override
  Widget build(BuildContext context) {
      final request = context.watch<CookieRequest>();
      return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Add Product Form',
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
        ),
        drawer: LeftDrawer(),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  // === Name ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Product Name",
                        labelText: "Product Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Name cannot be empty!";
                        }
                        return null;
                      },
                    ),
                  ),

                  // === Price ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Price",
                        labelText: "Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _price = value == "" ? 0 : int.parse(value);
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Price cannot be empty!";
                        }
                        if (int.tryParse(value) == null) {
                          return "Price must be a number!";
                        }
                        return null;
                      },
                    ),
                  ),

                  // === Description ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Description",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _description = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Description cannot be empty!";
                        }
                        return null;
                      },
                    ),
                  ),

                  // === Category ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Category",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      initialValue: _category,
                      items: _categories
                          .map((cat) => DropdownMenuItem(
                                value: cat,
                                child: Text(cat[0].toUpperCase() + cat.substring(1)),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _category = newValue!;
                        });
                      },
                    ),
                  ),

                  // === Thumbnail URL ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Thumbnail URL (optional)",
                        labelText: "Thumbnail URL",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _thumbnail = value!;
                        });
                      },
                    ),
                  ),

                  // === Is Featured ===
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SwitchListTile(
                      title: const Text("Mark as Featured Product"),
                      value: _isFeatured,
                      onChanged: (bool value) {
                        setState(() {
                          _isFeatured = value;
                        });
                      },
                    ),
                  ),
                  // === Save Button ===
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.red.shade700),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            // TODO: Replace the URL with your app's URL
                            // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
                            // If you using chrome,  use URL http://localhost:8000
                            
                            final response = await request.postJson(
                              "http://localhost:8000/create-flutter/",
                              jsonEncode({
                                "name": _name,
                                "price": _price,
                                "description": _description,
                                "thumbnail": _thumbnail,
                                "category": _category,
                                "is_featured": _isFeatured,
                              }),
                            );
                            if (context.mounted) {
                              if (response['status'] == 'success') {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Product successfully saved!"),
                                ));
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()),
                                );
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Something went wrong, please try again."),
                                ));
                              }
                            }
                          }
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      );
  }
}