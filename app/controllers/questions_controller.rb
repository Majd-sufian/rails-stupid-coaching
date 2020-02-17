class QuestionsController < ApplicationController
  def ask
    puts 'Hello, I am your coach, what did you want to tell me?'
  end

  def answer
    if params[:question] == 'i am going to work right now!'
      @answers = 'great'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
