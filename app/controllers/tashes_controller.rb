class TashesController < ApplicationController
  before_action :set_tash, only: [:show, :edit, :update, :destroy]

  # GET /tashes
  # GET /tashes.json
  def index
    @tashes = Tash.all
  end

  # GET /tashes/1
  # GET /tashes/1.json
  def show
  end

  # GET /tashes/new
  def new
    @tash = Tash.new
  end

  # GET /tashes/1/edit
  def edit
  end

  # POST /tashes
  # POST /tashes.json
  def create
    @tash = Tash.new(tash_params)

    respond_to do |format|
      if @tash.save
        format.html { redirect_to @tash, notice: 'Tash was successfully created.' }
        format.json { render :show, status: :created, location: @tash }
      else
        format.html { render :new }
        format.json { render json: @tash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tashes/1
  # PATCH/PUT /tashes/1.json
  def update
    respond_to do |format|
      if @tash.update(tash_params)
        format.html { redirect_to @tash, notice: 'Tash was successfully updated.' }
        format.json { render :show, status: :ok, location: @tash }
      else
        format.html { render :edit }
        format.json { render json: @tash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tashes/1
  # DELETE /tashes/1.json
  def destroy
    @tash.destroy
    respond_to do |format|
      format.html { redirect_to tashes_url, notice: 'Tash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tash
      @tash = Tash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tash_params
      params.require(:tash).permit(:content)
    end
end
