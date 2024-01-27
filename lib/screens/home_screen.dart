import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Created a global key for the Form Widget
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late int num1, num2, num3, num4, num5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DMC App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const Text(
                'Enter Subject Marks Below:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('English'),
                        hintText: 'Enter English Marks Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter a value.";
                        } else if (int.parse(text) < 0 ||
                            int.parse(text) > 100) {
                          return "Please enter a value between 0 and 100.";
                        }
                        num1 = int.parse(text);
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('Urdu'),
                        hintText: 'Enter Urdu Marks Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter a value.";
                        } else if (int.parse(text) < 0 ||
                            int.parse(text) > 100) {
                          return "Please enter a value between 0 and 100.";
                        }
                        num2 = int.parse(text);
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('Maths'),
                        hintText: 'Enter Maths Marks Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter a value.";
                        } else if (int.parse(text) < 0 ||
                            int.parse(text) > 100) {
                          return "Please enter a value between 0 and 100.";
                        }
                        num3 = int.parse(text);
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('Islamiat'),
                        hintText: 'Enter Islamiat Marks Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter a value.";
                        } else if (int.parse(text) < 0 ||
                            int.parse(text) > 100) {
                          return "Please enter a value between 0 and 100.";
                        }
                        num4 = int.parse(text);
                        return null;
                      },
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('Science'),
                        hintText: 'Enter Science Marks Here',
                        border: OutlineInputBorder(),
                      ),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return "Please enter a value.";
                        } else if (int.parse(text) < 0 ||
                            int.parse(text) > 100) {
                          return "Please enter a value between 0 and 100.";
                        }
                        num5 = int.parse(text);
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.black87,
                    ),
                    onPressed: () {},
                    child: const Text('Calculate'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Clear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
