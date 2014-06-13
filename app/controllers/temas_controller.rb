class TemasController < ApplicationController
  before_action :set_tema, only: [:show, :edit, :update, :destroy]

  def index
    @temas = Tema.all
  end

  def show
  end

  def new
    @tema = Tema.new
  end

  def edit
  end

  def create
    @tema = Tema.new(tema_params)

    respond_to do |format|
      if @tema.save
        format.html { redirect_to @tema, notice: 'Tema was successfully created.' }
        format.json { render :show, status: :created, location: @tema }
      else
        format.html { render :new }
        format.json { render json: @tema.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tema.update(tema_params)
        format.html { redirect_to @tema, notice: 'Tema was successfully updated.' }
        format.json { render :show, status: :ok, location: @tema }
      else
        format.html { render :edit }
        format.json { render json: @tema.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tema.destroy
    respond_to do |format|
      format.html { redirect_to temas_url, notice: 'Tema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tema
      @tema = Tema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tema_params
      params.require(:tema).permit(:titulo, :descripcion)
    end
end
