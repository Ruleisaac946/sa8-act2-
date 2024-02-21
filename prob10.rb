class Quiz
  @questions = {
    math: "What is 2 + 2?",
    history: "When was the Declaration of Independence signed?"
  }

  def initialize

  end

  def self.define_question_methods
    @questions.each do |topic, question|
      define_method("question_about_#{topic}") do
        puts question
      end
    end
  end

  define_question_methods
end

quiz = Quiz.new
quiz.question_about_math
quiz.question_about_history
