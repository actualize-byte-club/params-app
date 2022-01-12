class ParamsExamplesController < ApplicationController

  def query_params
    my_message = params["message"]
    second_message = params["second_message"]
    render json: {
      message: "The message is #{my_message}",
      second_message: "The second message is #{second_message}"
    }
  end

end
