class BouquetsController < ApplicationController
  before_action :set_bouquet, only: [:show, :edit, :update, :destroy]

  # GET /bouquets
  # GET /bouquets.json
  def index
    @bouquets = Bouquet.all
  end

  # GET /bouquets/1
  # GET /bouquets/1.json
  def show
  end

  # GET /bouquets/new
  def new
    @bouquet = Bouquet.new
  end

  # GET /bouquets/1/edit
  def edit
  end

  # POST /bouquets
  # POST /bouquets.json
  def create
    @bouquet = Bouquet.new(bouquet_params)

    respond_to do |format|
      if @bouquet.save
        format.html { redirect_to @bouquet, notice: '花束が作られました' }
        format.json { render :show, status: :created, location: @bouquet }
      else
        format.html { render :new }
        format.json { render json: @bouquet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bouquets/1
  # PATCH/PUT /bouquets/1.json
  def update
    respond_to do |format|
      if @bouquet.update(bouquet_params)
        format.html { redirect_to @bouquet, notice: '花束が新しく作成されました' }
        format.json { render :show, status: :ok, location: @bouquet }
      else
        format.html { render :edit }
        format.json { render json: @bouquet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bouquets/1
  # DELETE /bouquets/1.json
  def destroy
    @bouquet.destroy
    respond_to do |format|
      format.html { redirect_to bouquets_url, notice: '花束は削除されました' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bouquet
      @bouquet = Bouquet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bouquet_params
      params.require(:bouquet).permit(:word1, :word2, :word3)
    end
end
