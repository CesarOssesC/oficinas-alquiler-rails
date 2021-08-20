class Oficina < ApplicationRecord
    
    has_many :inquilinos

    before_validation :cambiar_a_mayusculas
    before_save :antes_de_guardar

    validates :codigo, uniqueness:true
    validates :codigo, presence: true
    validates :precio, presence: true

    private

    def cambiar_a_mayusculas
        self.codigo.upcase!

    end

    def antes_de_guardar
        
    end
end
