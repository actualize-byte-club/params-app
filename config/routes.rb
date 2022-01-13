Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params"
  get "/name" => "params_examples#name"
  get "/guess_query" => "params_examples#guess_query"

  get "/segment_params/:wildcard" => "params_examples#segment_params"
  get "/sum_nums/:number1/:number2" => "params_examples#sum_nums"
  get "/guess_segment/:user_guess" => "params_examples#guess_query"

  post "/body_params" => "params_examples#body_params"
end