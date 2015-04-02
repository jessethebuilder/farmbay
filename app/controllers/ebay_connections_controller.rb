class EbayConnectionsController < ApplicationController
  before_action :set_ebay_connection, only: [:show, :edit, :update, :destroy]

  # GET /ebay_connections
  def index
    @ebay_connections = EbayConnection.all
  end

  # GET /ebay_connections/1
  def show
  end

  # GET /ebay_connections/new
  def new
    @ebay_connection = EbayConnection.new
  end

  # GET /ebay_connections/1/edit
  def edit
  end

  # POST /ebay_connections
  def create
    @ebay_connection = EbayConnection.new(ebay_connection_params)

    if @ebay_connection.save
      redirect_to @ebay_connection, notice: 'Ebay connection was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ebay_connections/1
  def update
    if @ebay_connection.update(ebay_connection_params)
      redirect_to @ebay_connection, notice: 'Ebay connection was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ebay_connections/1
  def destroy
    @ebay_connection.destroy
    redirect_to ebay_connections_url, notice: 'Ebay connection was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ebay_connection
      @ebay_connection = EbayConnection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ebay_connection_params
      params[:ebay_connection]
    end
end
