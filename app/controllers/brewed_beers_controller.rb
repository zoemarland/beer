class BrewedBeersController < ApplicationController
  before_action :set_brewed_beer, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  # GET /brewed_beers
  # GET /brewed_beers.json
  def index
    @brewed_beers = BrewedBeer.all
  end

  # GET /brewed_beers/1
  # GET /brewed_beers/1.json
  def show
  end

  # GET /brewed_beers/new
  def new
    @brewed_beer = BrewedBeer.new
  end

  # GET /brewed_beers/1/edit
  def edit
  end

  # POST /brewed_beers
  # POST /brewed_beers.json
  def create
    @brewed_beer = BrewedBeer.new(brewed_beer_params)

    respond_to do |format|
      if @brewed_beer.save
        format.html { redirect_to @brewed_beer, notice: 'Brewed beer was successfully created.' }
        format.json { render :show, status: :created, location: @brewed_beer }
      else
        format.html { render :new }
        format.json { render json: @brewed_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brewed_beers/1
  # PATCH/PUT /brewed_beers/1.json
  def update
    respond_to do |format|
      if @brewed_beer.update(brewed_beer_params)
        format.html { redirect_to @brewed_beer, notice: 'Brewed beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @brewed_beer }
      else
        format.html { render :edit }
        format.json { render json: @brewed_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brewed_beers/1
  # DELETE /brewed_beers/1.json
  def destroy
    @brewed_beer.destroy
    respond_to do |format|
      format.html { redirect_to brewed_beers_url, notice: 'Brewed beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewed_beer
      @brewed_beer = BrewedBeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brewed_beer_params
      params.require(:brewed_beer).permit(:name, :brand, :style, :all_beer_id)
    end
end
