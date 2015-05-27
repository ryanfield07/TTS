class MarlblesController < ApplicationController
  before_action :set_marlble, only: [:show, :edit, :update, :destroy]

  # GET /marlbles
  # GET /marlbles.json
  def index
    @marlbles = Marlble.all
  end

  # GET /marlbles/1
  # GET /marlbles/1.json
  def show
  end

  # GET /marlbles/new
  def new
    @marlble = Marlble.new
  end

  # GET /marlbles/1/edit
  def edit
  end

  # POST /marlbles
  # POST /marlbles.json
  def create
    @marlble = Marlble.new(marlble_params)

    respond_to do |format|
      if @marlble.save
        format.html { redirect_to @marlble, notice: 'Marlble was successfully created.' }
        format.json { render :show, status: :created, location: @marlble }
      else
        format.html { render :new }
        format.json { render json: @marlble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marlbles/1
  # PATCH/PUT /marlbles/1.json
  def update
    respond_to do |format|
      if @marlble.update(marlble_params)
        format.html { redirect_to @marlble, notice: 'Marlble was successfully updated.' }
        format.json { render :show, status: :ok, location: @marlble }
      else
        format.html { render :edit }
        format.json { render json: @marlble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marlbles/1
  # DELETE /marlbles/1.json
  def destroy
    @marlble.destroy
    respond_to do |format|
      format.html { redirect_to marlbles_url, notice: 'Marlble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marlble
      @marlble = Marlble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marlble_params
      params.require(:marlble).permit(:name, :color, :person_id)
    end
end
