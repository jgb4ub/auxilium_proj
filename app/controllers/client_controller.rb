class ClientController < ApplicationController
  before_action :require_signin
  def index
  end
end
