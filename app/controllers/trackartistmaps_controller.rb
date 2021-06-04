class TrackartistmapsController < ApplicationController
  before_action :set_trackartistmap, only: %i[ show edit update destroy ]

  # GET /trackartistmaps or /trackartistmaps.json
  def index
    @trackartistmaps = Trackartistmap.all
  end

  # GET /trackartistmaps/1 or /trackartistmaps/1.json
  def show
  end

  # GET /trackartistmaps/new
  def new
    @trackartistmap = Trackartistmap.new
  end

  # GET /trackartistmaps/1/edit
  def edit
  end

  # POST /trackartistmaps or /trackartistmaps.json
  def create
    @trackartistmap = Trackartistmap.new(trackartistmap_params)

    respond_to do |format|
      if @trackartistmap.save
        format.html { redirect_to @trackartistmap, notice: "Trackartistmap was successfully created." }
        format.json { render :show, status: :created, location: @trackartistmap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trackartistmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackartistmaps/1 or /trackartistmaps/1.json
  def update
    respond_to do |format|
      if @trackartistmap.update(trackartistmap_params)
        format.html { redirect_to @trackartistmap, notice: "Trackartistmap was successfully updated." }
        format.json { render :show, status: :ok, location: @trackartistmap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trackartistmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trackartistmaps/1 or /trackartistmaps/1.json
  def destroy
    @trackartistmap.destroy
    respond_to do |format|
      format.html { redirect_to trackartistmaps_url, notice: "Trackartistmap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackartistmap
      @trackartistmap = Trackartistmap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trackartistmap_params
      params.require(:trackartistmap).permit(:track_id, :artist_id)
    end
end
