class QuestionsController < ApplicationController
  def about
  end

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question) if @question
  end

  def coach_answer(your_question)
    if your_question == "I am going to work"
      'Great!'
    elsif your_question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
