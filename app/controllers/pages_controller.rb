class PagesController < ApplicationController

  before_action :require_user, only: [:dashboard]

  def main

  end

  def dashboard

  end

  private

end
