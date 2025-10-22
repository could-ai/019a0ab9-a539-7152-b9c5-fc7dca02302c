class Philosopher {
  final String name;
  final String idea;
  final String quote;
  final String description;
  final String example;
  final List<String> reflectionQuestions;

  Philosopher({
    required this.name,
    required this.idea,
    required this.quote,
    required this.description,
    required this.example,
    required this.reflectionQuestions,
  });
}

final List<Philosopher> philosophers = [
  Philosopher(
    name: 'SOCRATES',
    idea: 'Death as Liberation of the Soul',
    quote: 'Philosophy is learning how to die.',
    description: 'Socrates believed that death is the moment when the soul separates from the body to reach truth and peace. The wise person prepares for it by living truthfully and morally.',
    example: 'Socrates faced his death calmly by drinking poison, unafraid because he lived in truth.',
    reflectionQuestions: [
      'What can we learn from Socrates’ calm acceptance of death?',
      'How can honesty and goodness prepare a person for death?',
    ],
  ),
  Philosopher(
    name: 'EPICURUS',
    idea: 'Death is Nothing to Us',
    quote: 'When we exist, death is not; when death comes, we are not.',
    description: 'For Epicurus, death should not be feared — it is simply the end of sensation. To live peacefully is to let go of fear and enjoy life’s simple joys.',
    example: 'A person who finds joy in calm mornings, laughter, and friendship lives without fear.',
    reflectionQuestions: [
      'Do you agree that fearing death is useless? Why or why not?',
      'What simple joys make life worth living for you?',
    ],
  ),
  Philosopher(
    name: 'MARTIN HEIDEGGER',
    idea: 'Death Gives Life Its Meaning',
    quote: 'Death is the impossibility of all life’s possibilities.',
    description: 'Heidegger said that knowing we will die helps us live more authentically. Time becomes meaningful when we realize it will one day end.',
    example: 'A student who uses time wisely after losing someone realizes every day is borrowed time.',
    reflectionQuestions: [
      'How does awareness of death affect how you live?',
      'What would you do differently if your time were limited?',
    ],
  ),
  Philosopher(
    name: 'JEAN-PAUL SARTRE',
    idea: 'Create Your Own Meaning',
    quote: 'Man is condemned to be free.',
    description: 'Sartre believed that life has no fixed meaning — we create our own through our actions. Death ends our choices, so while we live, we define ourselves by what we choose to do.',
    example: 'A teacher who chooses to serve and inspire others defines life’s meaning through choice.',
    reflectionQuestions: [
      'Do you agree that you create your own meaning?',
      'How do your daily choices reflect who you want to be?',
    ],
  ),
  Philosopher(
    name: 'ALBERT CAMUS',
    idea: 'The Courage to Live Despite Absurdity',
    quote: 'We must imagine Sisyphus happy.',
    description: 'Camus believed life is absurd — full of struggles — but we must live with courage and joy anyway. Meaning is found not in avoiding pain, but in continuing to live bravely.',
    example: 'A person who keeps smiling and helping others despite hardship shows strength.',
    reflectionQuestions: [
      'Have you faced a difficult moment that made you stronger?',
      'What gives you courage to continue when life feels hard?',
    ],
  ),
  Philosopher(
    name: 'SØREN KIERKEGAARD',
    idea: 'Death as Meeting with God',
    quote: 'Life can only be understood backwards; but it must be lived forwards.',
    description: 'For Kierkegaard, death is the moment we face our Creator. It pushes us to live sincerely — with faith, love, and inner truth.',
    example: 'A faithful person who faces illness with peace and gratitude lives ready for death.',
    reflectionQuestions: [
      'How does faith help you face fear and loss?',
      'What does living “authentically before God” mean to you?',
    ],
  ),
  Philosopher(
    name: 'IMMANUEL KANT',
    idea: 'Moral Duty Beyond Death',
    quote: 'Live your life as though your every act were to become a universal law.',
    description: 'Kant taught that true meaning comes from living morally — not for reward but because it is right. Even death cannot erase the value of a good act.',
    example: 'Someone who returns a lost item without expecting praise lives with moral integrity.',
    reflectionQuestions: [
      'How can doing what is right give life meaning?',
      'What virtue do you want people to remember about you?',
    ],
  ),
  Philosopher(
    name: 'PLATO',
    idea: 'Death as Return to Truth',
    quote: 'The body is the prison of the soul.',
    description: 'Plato saw death as liberation — the soul’s return to eternal truth. To prepare for this is to live wisely and pursue goodness.',
    example: 'A student who values learning and honesty over wealth purifies the soul for truth.',
    reflectionQuestions: [
      'Do you believe the soul continues after death?',
      'How can wisdom prepare you for life beyond the body?',
    ],
  ),
];
