class PagesController < ApplicationController

  before_action :require_user, only: [:dashboard]

  def main

  end

  def dashboard
    @clients = Client.where(user_id: current_user.id)
  end

  private

end
