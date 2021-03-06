class OficinasController < ApplicationController
  before_action :validar_sesion
  #get
  def index
    @lista_oficinas = Oficina.includes(:inquilinos).order(id: :asc)
    
  end

  #get
  def crear
    @oficina_nueva = Oficina.new
  end

  #post
  def guardar
    valores = params.require(:oficina).permit(:codigo, :precio)

    @oficina_nueva = Oficina.new(valores)
    @oficina_nueva.esta_alquilada = false
    
    if @oficina_nueva.save
      redirect_to action: "index"
    else  
      render :crear
    end

  end

end
