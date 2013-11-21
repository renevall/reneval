class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end
  
  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:success] = "Se ha creado el cliente #{@client.name}"
      redirect_to @client
    else
      render 'new'
    end
  end

  private

    def client_params
      params.require(:client).permit(:name, :fullname,:ruc,
        :legalrepresentative, :address, :web)
    end
end
