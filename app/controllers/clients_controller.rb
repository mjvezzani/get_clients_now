class ClientsController < ApplicationController

  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
    
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.days_till_follow_up = (@client.days_till_follow_up - Date.today).round

    if @client.save
      flash[:notice] = 'New client created'
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @client.update(client_params)
      flash[:notice] = 'Client information has been updated'
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy

  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :phone, :address, :date_of_first_contact, :where_contacted, :history_item, :days_till_follow_up)
  end

  def set_client
    @client = Client.find(params[:id])
  end

end
