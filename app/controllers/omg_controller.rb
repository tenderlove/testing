class OmgController < ApplicationController
  include ActionController::Live

  def index
    loop do
      response.stream.write "hello world\n"
      sleep 1
    end
  end
end
