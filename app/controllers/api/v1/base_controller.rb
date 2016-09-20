class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  layout false
  respond_to :json
end
