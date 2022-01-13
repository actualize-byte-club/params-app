Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params"
  get "/name" => "params_examples#name"
  get "/guess_query" => "params_examples#guess_method"

  get "/segment_params/:wildcard" => "params_examples#segment_params"
  get "/sum_nums/:number1/:number2" => "params_examples#sum_nums"
  get "/guess_segment/:user_guess" => "params_examples#guess_method"

  post "/body_params" => "params_examples#body_params"
  post "/guess_body" => "params_examples#guess_method"
  post "/credentials" => "params_examples#credentials"
end