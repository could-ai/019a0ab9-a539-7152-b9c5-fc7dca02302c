import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/module_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Being and Death',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ModuleHomeScreen(),
    );
  }
}

class ModuleHomeScreen extends StatelessWidget {
  const ModuleHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Being and Death'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildHeader(context, 'Introduction to the Philosophy of the Human Person'),
          const SizedBox(height: 24),
          _buildSection(
            context,
            '🎯 LEARNING OBJECTIVES',
            [
              'Explain how different philosophers understand death and life’s meaning.',
              'Reflect on personal beliefs about death as part of human existence.',
              'Write a philosophical reflection on which philosopher’s view aligns with their own understanding of life.',
            ],
          ),
          const SizedBox(height: 24),
          _buildOverview(context),
          const SizedBox(height: 24),
          _buildPreReadingPrompt(context),
          const SizedBox(height: 24),
          _buildReadingSections(context),
          const SizedBox(height: 24),
          _buildStudentWorksheet(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BEING AND DEATH: UNDERSTANDING LIFE THROUGH MORTALITY',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(subtitle, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }

  Widget _buildSection(BuildContext context, String title, List<String> points) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...points.map((point) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 16)),
                  Expanded(child: Text(point, style: const TextStyle(fontSize: 16))),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildOverview(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('📘 OVERVIEW', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text(
              'Death is one of the most certain realities of life — and yet one of the least understood. For philosophers, death is not just an ending, but a mirror that reflects the value of life itself. Through this reading, you will explore how eight great thinkers viewed death, what it teaches us about living, and how you can find your own meaning in life.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreReadingPrompt(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('🌱 PRE-READING PROMPT', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('💭 Before you begin:', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            const SizedBox(height: 8),
            const Text('On your paper, answer:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            const Text('“What do I feel when I think about death?”', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
            const Text('“Does death take away meaning — or give it?”', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }

  Widget _buildReadingSections(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('📖 READING SECTIONS', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...philosophers.map((philosopher) => ListTile(
              title: Text(philosopher.name),
              subtitle: Text(philosopher.idea),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhilosopherDetailScreen(philosopher: philosopher),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentWorksheet(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const StudentWorksheetScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('✍️ STUDENT WORKSHEET OUTPUT', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Click to view the worksheet', style: TextStyle(fontSize: 16, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}

class PhilosopherDetailScreen extends StatelessWidget {
  final Philosopher philosopher;

  const PhilosopherDetailScreen({super.key, required this.philosopher});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(philosopher.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(philosopher.idea, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text('“${philosopher.quote}”', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontStyle: FontStyle.italic)),
          const SizedBox(height: 16),
          Text(philosopher.description, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 24),
          _buildSection(context, '🧩 Life Example', philosopher.example),
          const SizedBox(height: 24),
          _buildReflectionQuestions(context, philosopher.reflectionQuestions),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Text(content, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  Widget _buildReflectionQuestions(BuildContext context, List<String> questions) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('✍️ Reflection (write on paper)', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...questions.map((question) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text('• $question', style: const TextStyle(fontSize: 16)),
            )),
          ],
        ),
      ),
    );
  }
}

class StudentWorksheetScreen extends StatelessWidget {
  const StudentWorksheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Worksheet'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Which Philosopher Speaks to My View of Life and Death?',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          _buildGuideQuestion(
            context,
            'Which philosopher’s idea about death and life’s meaning do you agree with most? Why?',
          ),
          const SizedBox(height: 16),
          _buildGuideQuestion(
            context,
            'How does this philosophy connect with your personal experiences or beliefs?',
          ),
          const SizedBox(height: 16),
          _buildGuideQuestion(
            context,
            'What values or actions will you practice to live meaningfully while you are alive?',
          ),
          const SizedBox(height: 24),
          _buildCompleteStatement(context),
        ],
      ),
    );
  }

  Widget _buildGuideQuestion(BuildContext context, String question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const TextField(
          maxLines: 3,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Write your reflection here...',
          ),
        ),
      ],
    );
  }

  Widget _buildCompleteStatement(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Complete this statement:', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        const Text('“To me, death means __________________________,', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        const TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            hintText: 'your meaning of death',
          ),
        ),
        const SizedBox(height: 16),
        const Text('and because of that, I choose to ______________________.”', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        const TextField(
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            hintText: 'your choice on how to live',
          ),
        ),
      ],
    );
  }
}
