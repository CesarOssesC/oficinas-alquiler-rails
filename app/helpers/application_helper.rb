module ApplicationHelper
    def validar_sesion
        if session[:admin_id]
            @admin = Administrador.find(session[:admin_id])
            
        else
            terminar_sesion
        end
    rescue ActiveRecord::RecordNotFound
        terminar_sesion
    end

    private

    def terminar_sesion
        session[:admin_id] = nil
        redirect_to sesiones_path
    end
end
