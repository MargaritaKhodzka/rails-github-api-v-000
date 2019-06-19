class RepositoriesController < ApplicationController

  def index
    response = Faraday.get 'https://api.github.com/user/repos', {}, {'Authorization' => "token #{session[:token]}", 'Accept' => 'application/json'}
    @repos = JSON.parse(response.body)
  end

end
