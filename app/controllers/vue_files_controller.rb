class VueFilesController < ApplicationController
  before_action :set_vue_file, only: [:show, :edit, :update, :destroy]

  # GET /vue_files
  # GET /vue_files.json
  def index
    @vue_files = VueFile.all
  end

  # GET /vue_files/1
  # GET /vue_files/1.json
  def show
  end

  # GET /vue_files/new
  def new
    @vue_file = VueFile.new
  end

  # GET /vue_files/1/edit
  def edit
  end

  # POST /vue_files
  # POST /vue_files.json
  def create
    @vue_file = VueFile.new(vue_file_params)

    respond_to do |format|
      if @vue_file.save
        format.html { redirect_to @vue_file, notice: 'Vue file was successfully created.' }
        format.json { render :show, status: :created, location: @vue_file }
      else
        format.html { render :new }
        format.json { render json: @vue_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vue_files/1
  # PATCH/PUT /vue_files/1.json
  def update
    respond_to do |format|
      if @vue_file.update(vue_file_params)
        format.html { redirect_to @vue_file, notice: 'Vue file was successfully updated.' }
        format.json { render :show, status: :ok, location: @vue_file }
      else
        format.html { render :edit }
        format.json { render json: @vue_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vue_files/1
  # DELETE /vue_files/1.json
  def destroy
    @vue_file.destroy
    respond_to do |format|
      format.html { redirect_to vue_files_url, notice: 'Vue file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vue_file
      @vue_file = VueFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vue_file_params
      params.fetch(:vue_file, {})
    end
end
