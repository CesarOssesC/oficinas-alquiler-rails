class InquilinosController < ApplicationController
    before_action :validar_sesion
    before_action :buscar_inquilino, only: [:mostrar, :editar, :actualizar, :eliminar]
    # before_action :buscar_inquilino, except: [:index, :crear]
    
    def crear
        @inquilino_nuevo = Inquilino.new
        @oficinas = Oficina.select(:id, :codigo).order(id: :asc)
    end

    def guardar
        
        @inquilino_nuevo = Inquilino.new(inquilino_params)
        
        
        if @inquilino_nuevo.save
            redirect_to "/oficinas/index"
        else
            @oficinas = Oficina.select(:id, :codigo).order(id: :asc)
            render :crear
        end
    end

    def index
        @lista_inquilinos = Inquilino.includes(:oficina).order(id: :asc)

    end

    def mostrar
        
    end

    def editar
        
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end

    #put/patch
    def actualizar
        
        
        if @inquilino_nuevo.update(inquilino_params)
            redirect_to @inquilino_nuevo
        else
            @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
            render :editar
        end
    end

    #delete
    def eliminar
        @inquilino_nuevo.destroy
        redirect_to action: :index
    end

    private

    def inquilino_params
        return params.require(:inquilino).permit(:nombre, :apellido, :rut, :telefono, :oficina_id)
    end

    def buscar_inquilino
        @inquilino_nuevo = Inquilino.find(params[:id])
    end

end
