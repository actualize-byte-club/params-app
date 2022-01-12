class ParamsExamplesController < ApplicationController

  def query_params
    my_message = params["message"]
    second_message = params["second_message"]
    render json: {
      message: "The message is #{my_message}",
      second_message: "The second message is #{second_message}"
    }
  end

  def name
    my_name = params[:my_name].upcase
    message = my_name
    if my_name.starts_with?("A")
      message = "Hey your name starts with A!"
    end
    render json: {message: message}
  end

  def guess_query
    user_guess = params[:user_guess].to_i
    winning_number = 36
    if user_guess > winning_number
      message = "Guess lower!"
    elsif user_guess < winning_number
      message = "Guess higher!"
    else
      message = "You win!"
    end
    render json: {message: message}
  end

  def segment_params
    input_value = params[:wildcard]
    render json: {message: "The url segment value is #{input_value}"}
  end

  def sum_nums
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    sum = number1 + number2
    render json: {message: "Your sum is: #{sum}"}
  end

end
