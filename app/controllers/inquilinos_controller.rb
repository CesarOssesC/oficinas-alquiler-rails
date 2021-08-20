class InquilinosController < ApplicationController
    
    def crear
        @inquilino_nuevo = Inquilino.new
        @oficinas = Oficina.select(:id, :codigo).order(id: :asc)
    end

    def guardar
        valores = params.require(:inquilino).permit(:nombre, :apellido, :rut, :telefono, :oficina_id)
        @inquilino_nuevo = Inquilino.new(valores)
        
        
        if @inquilino_nuevo.save
            redirect_to "/oficinas/index"
        else
            @oficinas = Oficina.select(:id, :codigo).order(id: :asc)
            render :crear
        end
    end

    def index 

    end

    def mostrar
        id_inquilino = params[:id]
        @inquilino_nuevo = Inquilino.find(id_inquilino)
    end

    def editar
        id_inquilino = params[:id]
        @inquilino_nuevo = Inquilino.find(id_inquilino)
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end

    #put/patch
    def actualizar
        @inquilino_nuevo = Inquilino.find(params[:id])
        valores = params.require(:inquilino).permit(:nombre, :apellido, :rut, :telefono, :oficina_id)
        if @inquilino.update(valores)
            
        end
    end

    #delete
    def eliminar

    end

end
