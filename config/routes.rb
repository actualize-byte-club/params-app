Rails.application.routes.draw do
  get "/query_params" => "params_examples#query_params"
  get "/name" => "params_examples#name"
  get "/guess_query" => "params_examples#guess_query"

  get "/segment_params/:wildcard" => "params_examples#segment_params"
end