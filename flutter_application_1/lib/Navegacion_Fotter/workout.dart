import 'package:flutter/material.dart';

class WorkoutHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Workout Hub'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home'); // Regresa al home
          },
        ),
      ),


      body: ListView(
        children: [
          // Categoría: Upper Body
          WorkoutCategory(
            title: 'Upper Body',
            exercises: [
              WorkoutExercise(
                title: 'Push-ups',
                description: '3 sets of 12 reps',
              ),
              WorkoutExercise(
                title: 'Bicep Curls',
                description: '3 sets of 15 reps',
              ),
              WorkoutExercise(
                title: 'Tricep Dips',
                description: '3 sets of 12 reps',
              ),
            ],
          ),

          // Categoría: Lower Body
          WorkoutCategory(
            title: 'Lower Body',
            exercises: [
              WorkoutExercise(
                title: 'Squats',
                description: '3 sets of 12 reps',
              ),
              WorkoutExercise(
                title: 'Lunges',
                description: '3 sets of 12 reps (per leg)',
              ),
              WorkoutExercise(
                title: 'Calf Raises',
                description: '3 sets of 15 reps',
              ),
            ],
          ),

          // Categoría: Core
          WorkoutCategory(
            title: 'Core',
            exercises: [
              WorkoutExercise(
                title: 'Plank',
                description: '3 sets of 30 seconds',
              ),
              WorkoutExercise(
                title: 'Russian Twists',
                description: '3 sets of 12 reps',
              ),
              WorkoutExercise(
                title: 'Leg Raises',
                description: '3 sets of 12 reps',
              ),
            ],
          ),

          // Categoría: Cardio
          WorkoutCategory(
            title: 'Cardio',
            exercises: [
              WorkoutExercise(
                title: 'Jogging',
                description: '30 minutes',
              ),
              WorkoutExercise(
                title: 'Cycling',
                description: '30 minutes',
              ),
              WorkoutExercise(
                title: 'Swimming',
                description: '30 minutes',
              ),
            ],
          ),

          // Categoría: Yoga
          WorkoutCategory(
            title: 'Yoga',
            exercises: [
              WorkoutExercise(
                title: 'Downward-Facing Dog',
                description: '3 sets of 30 seconds',
              ),
              WorkoutExercise(
                title: 'Warrior Pose',
                description: '3 sets of 30 seconds',
              ),
              WorkoutExercise(
                title: 'Tree Pose',
                description: '3 sets of 30 seconds',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WorkoutCategory extends StatelessWidget {
  final String title;
  final List<WorkoutExercise> exercises;

  WorkoutCategory({required this.title, required this.exercises});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: exercises.length,
            itemBuilder: (context, index) {
              return WorkoutExerciseCard(exercise: exercises[index]);
            },
          ),
        ],
      ),
    );
  }
}

class WorkoutExercise extends StatelessWidget {
  final String title;
  final String description;

  WorkoutExercise({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutExerciseCard extends StatelessWidget {
  final WorkoutExercise exercise;

  WorkoutExerciseCard({required this.exercise});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(exercise.title),
      subtitle: Text(exercise.description),
    );
  }
}