# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = get_coach_answer(@question)
  end

  private

  def get_coach_answer(question)
    # Logique du coach pour fournir une réponse
    if question == 'i am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
