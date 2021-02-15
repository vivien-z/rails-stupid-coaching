class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] if params[:question].present?

    case @question
    when 'hello'
      @answer = 'hello back'
    when 'what time is it?'
      @answer = "Time: #{Time.now}"
    when 'I am going to work'
      @answer = 'Great!'
    # when '/.*?/'
    #   @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
