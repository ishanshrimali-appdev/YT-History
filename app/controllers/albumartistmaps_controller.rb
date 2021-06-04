class AlbumartistmapsController < ApplicationController
  before_action :set_albumartistmap, only: %i[ show edit update destroy ]

  # GET /albumartistmaps or /albumartistmaps.json
  def index
    @albumartistmaps = Albumartistmap.all
  end

  # GET /albumartistmaps/1 or /albumartistmaps/1.json
  def show
  end

  # GET /albumartistmaps/new
  def new
    @albumartistmap = Albumartistmap.new
  end

  # GET /albumartistmaps/1/edit
  def edit
  end

  # POST /albumartistmaps or /albumartistmaps.json
  def create
    @albumartistmap = Albumartistmap.new(albumartistmap_params)

    respond_to do |format|
      if @albumartistmap.save
        format.html { redirect_to @albumartistmap, notice: "Albumartistmap was successfully created." }
        format.json { render :show, status: :created, location: @albumartistmap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @albumartistmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albumartistmaps/1 or /albumartistmaps/1.json
  def update
    respond_to do |format|
      if @albumartistmap.update(albumartistmap_params)
        format.html { redirect_to @albumartistmap, notice: "Albumartistmap was successfully updated." }
        format.json { render :show, status: :ok, location: @albumartistmap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @albumartistmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumartistmaps/1 or /albumartistmaps/1.json
  def destroy
    @albumartistmap.destroy
    respond_to do |format|
      format.html { redirect_to albumartistmaps_url, notice: "Albumartistmap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albumartistmap
      @albumartistmap = Albumartistmap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def albumartistmap_params
      params.require(:albumartistmap).permit(:album_id, :artist_id)
    end
end
