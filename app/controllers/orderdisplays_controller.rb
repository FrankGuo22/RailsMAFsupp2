class OrderdisplaysController < ApplicationController
  before_action :set_orderdisplay, only: [:show, :edit, :update, :destroy]

  # GET /orderdisplays
  # GET /orderdisplays.json
  def index
    @orders = Order.all
    @lines =LineItem.all
    @products = Product.all
  end

  # GET /orderdisplays/1
  # GET /orderdisplays/1.json
  def show
  end

  # GET /orderdisplays/new
  def new
    @orderdisplay = Orderdisplay.new
  end

  # GET /orderdisplays/1/edit
  def edit
  end

  # POST /orderdisplays
  # POST /orderdisplays.json
  def create
    @orderdisplay = Orderdisplay.new(orderdisplay_params)

    respond_to do |format|
      if @orderdisplay.save
        format.html { redirect_to @orderdisplay, notice: 'Orderdisplay was successfully created.' }
        format.json { render :show, status: :created, location: @orderdisplay }
      else
        format.html { render :new }
        format.json { render json: @orderdisplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderdisplays/1
  # PATCH/PUT /orderdisplays/1.json
  def update
    respond_to do |format|
      if @orderdisplay.update(orderdisplay_params)
        format.html { redirect_to @orderdisplay, notice: 'Orderdisplay was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderdisplay }
      else
        format.html { render :edit }
        format.json { render json: @orderdisplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderdisplays/1
  # DELETE /orderdisplays/1.json
  def destroy
    @orderdisplay.destroy
    respond_to do |format|
      format.html { redirect_to orderdisplays_url, notice: 'Orderdisplay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderdisplay
      @orderdisplay = Orderdisplay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderdisplay_params
      params[:orderdisplay]
    end
end
