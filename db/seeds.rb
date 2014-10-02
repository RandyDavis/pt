# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new
user.name = "Randy Davis"
user.email = "randy@example.com"
user.password = "12341234"
user.password_confirmation = "12341234"
user.role = 'trainer'
user.save!


10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@example.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password:  password,
               password_confirmation: password)
end

exercises = Exercise.create!([
  
{ name: "Bench Press",
  description: "Works chest, biceps, and triceps. Performed with a bar while lying on one's back on a bench.",
  difficulty: 5
  # category_id:
},

{ name: "Back Squat",
  description: "Works core, back, hamstrings, and quads when done properly. Performed while standing inside of a rack with the bar across shoulders behind the neck.",
  difficulty: 7
  # category_id:
},

{ name: "Squat Jump",
  description: "Works quads, hamstrings, core, and arms. Performed with or without weights.",
  difficulty: 4
  # category_id:
},

{ name: "Incline Press",
  description: "Works shoulders, chest, and arms. Performed in the rack with bench setup in an upright position at an angle.",
  difficulty: 6
  # category_id:
},

{ name: "Triceps Pushdown",
  description: "Auxilary exercise targeting the triceps.",
  difficulty: 7
  # category_id:
},

{ name: "Leg Curl",
  description: "Auxilary exercise targeting the hamstrings.",
  difficulty: 7
  # category_id:
},

{ name: "Wood Choppers",
  description: "Works core and obliques. Great abdominal exercise.",
  difficulty: 7
  # category_id:
},

{ name: "Elyptical",
  description: "Cardio performed on the elyptical machine.",
  difficulty: 5
  # category_id:
},

{ name: "Stepper",
  description: "Cardio performed on the stair stepper machine.",
  difficulty: 8
  # category_id:
},

{ name: "Exercise Bike",
  description: "Cardio performed on the exercise bike.",
  difficulty: 7
  # category_id:
}
])

video = Video.create!(title: "The 5 Minute Plank For Core Strength, Stability, and Rock-Hard Abs",
                      description: "Try out this plank routine to develop core strength, stability, and rock-hard abs. In this video: 20 Different Plank Variations, Each Held for 15 Seconds = 5 minutes total.",
                      youtube_id: "sl1bUFj1a44"
                      )

video = Video.create!(title: "30 Day Plank Challenge",
                      description: "A slowly intensifying way to dramatically improve abs and core strength. Here's the plan: Day 1 - 20 seconds Day 2 - 20 seconds Day 3 - 30 seconds Day 4 - 30 seconds Day 5 - 40 seconds Day 6 - REST Day 7 - 45 seconds Day 8 - 45 seconds Day 9 - 60 seconds Day 10 - 60 seconds Day 11 - 60 seconds Day 12 - 90 seconds Day 13 - REST Day 14 - 90 seconds Day 15 - 90 seconds Day 16 - 120 seconds Day 17 - 120 seconds Day 18 - 150 seconds Day 19 - REST Day 20 - 150 seconds Day 21 - 150 seconds Day 22 - 180 seconds Day 23 - 180 seconds Day 24 - 210 seconds Day 25 - 210 seconds Day 26 - REST Day 27 - 240 seconds Day 28 - 240 seconds Day 29 - 270 seconds Day 30 - PLANK FOR AS LONG AS POSSIBLE!!",
                      youtube_id: "Hwo1qGnyIUI"
                      )

video = Video.create!(title: "3 Bench Press Tips From The Strongest Man in the World",
                      description: "Dan Kovacs is the Strongest Man in the world and a Strength coach at Integrated Fitness http://if-fit.com. Dan has the world record for power lifting raw total 2202 pounds. He gives 3 tips on improving your bench.",
                      youtube_id: "XZfsqdCOiTg"
                      )

video = Video.create!(title: "The best squats i have ever seen (Idalberto Arranda)",
                      description: "He squats 280 KILOGRAMS. NOT pounds.... 280 kilograms = 616 pounds",
                      youtube_id: "VcEsmhVag1c"
                      )

video = Video.create!(title: 'Tricep Push Downs - the "Right Way" for Big Arms!',
                      description: "The tricep push down is a great move for building the triceps. But a lot of people do them wrong by placing excess strain on the elbow joints. In this video I'll show you the right way to do them for maximum results.",
                      youtube_id: "4m9-y7Bt1bQ"
                      )

video = Video.create!(title: "The Hamstring Curl",
                      description: "This great exercise uses the leg lift machine to work out your hamstrings. Jason (Mc)Guckian shows you here how to properly position yourself on the machine and the technique for the most effective work out.",
                      youtube_id: "H-DVmwhCTL8"
                      )

video = Video.create!(title: "Instructional Fitness - Incline Bench",
                      description: "http://www.instructionalfitness.com Personal fitness trainer Joe Tong teaches the proper way to do incline benches. Exercises: the upper chest. If you have any fitness questions, please submit them for our video Q&A section at www.instructionalfitness.com.",
                      youtube_id: "BW6J7A07ve0"
                      )

video = Video.create!(title: "B Fitness Westminster- Tabata Stair Workout",
                      description: "Personal Trainer Rex Bennett demonstrates a tabata style workout on the stair stepper. This is a high-intensity interval style of training good for burning calories quickly.",
                      youtube_id: "raG0c3rYAdM"
                      )


category = Category.create!(name: "Upper-Body",
                      description: "Muscles in the upper body that include the neck, shoulders, arms, and chest."
                      )

category = Category.create!(name: "Lower Body",
                      description: "Muscles in the lower body that include the hamstrings, glutes, quadriceps, and calves."
                      )

category = Category.create!(name: "Core",
                      description: "Muscles in the middle section of the body that involve the abs, chest, back, and obliques."
                      )

category = Category.create!(name: "Cardio",
                      description: "Activities designed to elevate heart rate and maintain the rate for extended periods of time."
                      )


plan = user.plans.create!(trainer_id: user.id,
                          client_id: User.last
                          )

plan.daily_exercises.create(day: DateTime.parse("October 2, 2014"),
                            exercise_id: exercises[0].id,
                            sets: 4,
                            reps: 6
                            )

plan.daily_exercises.create(day: DateTime.parse("October 2, 2014"),
                            exercise_id: exercises[3].id,
                            sets: 4,
                            reps: 6
                            )

plan.daily_exercises.create(day: DateTime.parse("October 2, 2014"),
                            exercise_id: exercises[2].id,
                            sets: 4,
                            reps: 20
                            )

plan.daily_exercises.create(day: DateTime.parse("October 2, 2014"),
                            exercise_id: exercises[6].id,
                            sets: 2,
                            reps: 25
                            )


plan.daily_exercises.create(day: DateTime.parse("October 3, 2014"),
                            exercise_id: exercises[1].id,
                            sets: 4,
                            reps: 10
                            )

plan.daily_exercises.create(day: DateTime.parse("October 3, 2014"),
                            exercise_id: exercises[2].id,
                            sets: 4,
                            reps: 20
                            )


plan.daily_exercises.create(day: DateTime.parse("October 3, 2014"),
                            exercise_id: exercises[5].id,
                            sets: 4,
                            reps: 10
                            )

plan.daily_exercises.create(day: DateTime.parse("October 3, 2014"),
                            exercise_id: exercises[9].id,
                            minutes: 30
                            )


