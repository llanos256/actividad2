class ComparendosController < ApplicationController
  before_action :set_comparendo, only: %i[ show edit update destroy ]

  # GET /comparendos or /comparendos.json
  def index
    @comparendos = Comparendo.all
  end

  # GET /comparendos/1 or /comparendos/1.json
  def show
  end

  # GET /comparendos/new
  def new
    @comparendo = Comparendo.new
  end

  # GET /comparendos/1/edit
  def edit
  end

  # POST /comparendos or /comparendos.json
  def create
    @comparendo = Comparendo.new(comparendo_params)

    respond_to do |format|
      if @comparendo.save
        format.html { redirect_to @comparendo, notice: "Comparendo was successfully created." }
        format.json { render :show, status: :created, location: @comparendo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comparendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comparendos/1 or /comparendos/1.json
  def update
    respond_to do |format|
      if @comparendo.update(comparendo_params)
        format.html { redirect_to @comparendo, notice: "Comparendo was successfully updated." }
        format.json { render :show, status: :ok, location: @comparendo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comparendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comparendos/1 or /comparendos/1.json
  def destroy
    @comparendo.destroy
    respond_to do |format|
      format.html { redirect_to comparendos_url, notice: "Comparendo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comparendo
      @comparendo = Comparendo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comparendo_params
      params.require(:comparendo).permit(:valor, :fecha, :estado, :Prestamo_id)
    end
end
