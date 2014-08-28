class PagesController < ApplicationController

  before_action :require_user, only: [:dashboard]

  def main

  end

  def dashboard
    @clients = Client.all
  end

  private

end
