class QuestionsController < ApplicationController
  def ask
    @ask = params[:query]
  end

  def answer
    @ask = ask
  if @ask.to_s.downcase == "i am going to work right now!"
   @answer = ""
  elsif @ask.to_s.end_with?("?")
   @answer = "Silly question, get dressed and go to work!"
  else
   @answer = "I don't care, get dressed and go to work!"
  end
  end
end


