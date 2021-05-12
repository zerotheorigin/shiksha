require "word_2_quiz/quiz_parser"
require "word_2_quiz/quiz_solutions_parser"

quiz = Word2Quiz.parse_quiz("/Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha/Question.docx","/Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha/Answers.docx")
puts quiz.to_h

puts quiz.to_canvas

puts quiz.questions_as_canvas
