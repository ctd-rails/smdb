class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  # GET /directors
  # GET /directors.json
  def index
    @directors = Director.all
  end

  # GET /directors/1
  # GET /directors/1.json
  def show
  end

  # GET /directors/new
  def new
    @director = Director.new
  end

  # GET /directors/1/edit
  def edit
  end

  # POST /directors
  # POST /directors.json
  def create
    @director = Director.new(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render action: 'show', status: :created, location: @director }
      else
        format.html { render action: 'new' }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directors/1
  # PATCH/PUT /directors/1.json
  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to @director, notice: 'Director was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directors/1
  # DELETE /directors/1.json
  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_director
      @director = Director.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def director_params
      params.require(:director).permit(:name, :dob)
    end
end
