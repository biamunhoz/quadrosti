class RecadosController < ApplicationController
  before_action :set_recado, only: %i[ show edit update destroy ]

  # GET /recados or /recados.json
  def index
    @recados = Recado.all
  end

  # GET /recados/1 or /recados/1.json
  def show
  end

  # GET /recados/new
  def new
    
    @recados = Recado.all

    @recado = Recado.new
  end

  # GET /recados/1/edit
  def edit
  end

  # POST /recados or /recados.json
  def create
    @recado = Recado.new(recado_params)

    respond_to do |format|
      if @recado.save
        format.html { redirect_to root_url}
        format.json { render :show, status: :created, location: @recado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recados/1 or /recados/1.json
  def update
    respond_to do |format|
      if @recado.update(recado_params)
        format.html { redirect_to recados_url, notice: "Anotação editada." }
        format.json { render :show, status: :ok, location: @recado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recados/1 or /recados/1.json
  def destroy
    @recado.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recado
      @recado = Recado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recado_params
      params.require(:recado).permit(:descricao, :autor)
    end
end
