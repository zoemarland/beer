class AllBeersController < ApplicationController
  before_action :set_all_beer, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  # GET /all_beers
  # GET /all_beers.json
  def index
    @all_beers = AllBeer.all
    @all_categories = []
    @amount = []
    @all_beers.each do | all_beer |
        if not @all_categories.include?(all_beer.categories)
        @all_categories <<all_beer.categories
      end
    end
    @all_beers = AllBeer.group(:categories).count
    @all_beers.each do |group|
      @amount<<group[1]
      @amount<<group[1]
    end

    puts @all_categories
    puts @amount
    @all_beers = AllBeer.all
    @all_beers = AllBeer.search(params[:term])
  end

  # GET /all_beers/1
  # GET /all_beers/1.json
  def show
  end

  # GET /all_beers/new
  def new
    @all_beer = AllBeer.new
  end

  # GET /all_beers/1/edit
  def edit
  end

  # POST /all_beers
  # POST /all_beers.json
  def create
    @all_beer = AllBeer.new(all_beer_params)

    respond_to do |format|
      if @all_beer.save
        format.html { redirect_to @all_beer, notice: 'All beer was successfully created.' }
        format.json { render :show, status: :created, location: @all_beer }
      else
        format.html { render :new }
        format.json { render json: @all_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /all_beers/1
  # PATCH/PUT /all_beers/1.json
  def update
    respond_to do |format|
      if @all_beer.update(all_beer_params)
        format.html { redirect_to @all_beer, notice: 'All beer was successfully updated.' }
        format.json { render :show, status: :ok, location: @all_beer }
      else
        format.html { render :edit }
        format.json { render json: @all_beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /all_beers/1
  # DELETE /all_beers/1.json
  def destroy
    @all_beer.destroy
    respond_to do |format|
      format.html { redirect_to all_beers_url, notice: 'All beer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_beer
      @all_beer = AllBeer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def all_beer_params
      params.require(:all_beer).permit(:name, :city, :address, :categories, :latitude, :longitude, :postalCode, :province, :twitter, :websites, :term)
    end
end
