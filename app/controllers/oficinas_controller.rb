class OficinasController < ApplicationController
  
  #get
  def index
    @lista_oficinas = Oficina.all.order(id: :asc)
    
  end

  #get
  def crear
    @oficina_nueva = Oficina.new
  end

  #post
  def guardar
    valores = params.require(:oficina).permit(:codigo, :precio, :esta_alquilada)

    @oficina_nueva = Oficina.new(valores)
    
    if @oficina_nueva.save
      redirect_to action: "index"
    else  
      render :crear
    end

  end

end
