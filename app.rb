require_relative 'config/environment'
require 'sinatra'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name2 = @user_name.reverse
    "Your name reversed: #{@user_name2}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    
    case @operation 
      when "add"
       "#{@num_1 + @num_2}"
      when "subtract"
      "#{@num_1 - @num_2}"
      when "multiply"
      "#{@num_1 * @num_2}"
      when "divide"
      "#{@num_1 / @num_2}"
    
  end
  
end