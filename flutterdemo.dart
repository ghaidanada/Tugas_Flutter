import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Running the app with MyApp as the root widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Add const constructor for MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DividerDemo(),
    );
  }
}

class DividerDemo extends StatelessWidget {
  const DividerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Vertical Divider Demo
            const SizedBox(height: 35),
            _buildVerticalDividerCard(context),

            const SizedBox(height: 25),

            // Horizontal Divider Demo
            _buildHorizontalDividerCard(context),

            const SizedBox(height: 25),

            // Custom Horizontal Divider Demo
            _buildCustomHorizontalDividerCard(context),
          ],
        ),
      ),
    );
  }

  // Vertical Divider Card
  Widget _buildVerticalDividerCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text("Demos Title",
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 5),
                    Text("Bolt UiX",
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 10),
                    const Text(
                        'A divider is a thin line that groups content in lists and containers.'),
                  ],
                ),
              ),
              const VerticalDivider(),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Tonight's availability",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  _buildButton("5:30PM"),
                  const SizedBox(width: 8),
                  _buildButton("7:30PM"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Horizontal Divider Card
  Widget _buildHorizontalDividerCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/test.webp',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Card Title",
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 10),
                Text("Sub title",
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 10),
                const Text(
                    'A divider is a thin line that groups content in lists and containers.'),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tonight's availability",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Row(
                  children: [
                    _buildButton("5:30PM"),
                    const SizedBox(width: 8),
                    _buildButton("7:30PM"),
                    const SizedBox(width: 8),
                    _buildButton("8:00PM"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Custom Horizontal Divider Card
  Widget _buildCustomHorizontalDividerCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/test.webp',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Card Title",
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: 10),
                Text("Sub title",
                    style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 10),
                const Text(
                    'A divider is a thin line that groups content in lists and containers.'),
              ],
            ),
          ),
          const Divider(
            color: Colors.purpleAccent,
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tonight's availability",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Row(
                  children: [
                    _buildButton("5:30PM"),
                    const SizedBox(width: 8),
                    _buildButton("7:30PM"),
                    const SizedBox(width: 8),
                    _buildButton("8:00PM"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build a button
  Widget _buildButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      ),
      child: Text(text),
      onPressed: () {},
    );
  }
}
