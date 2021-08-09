class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = ['Great', 'Silly question', 'get dressed and go to work!']
    @coach_answer =  if @question == "I am going to work"
                        @answer[0]
                      elsif @question.include? "?"
                        @answer[1]
                      else
                        @answer[2]
                    end
  end
end
