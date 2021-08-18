class Inquilino < ApplicationRecord
  belongs_to :oficina

  validates :nombre, presence:true
  validates :apellido, presence: true
  validates :telefono, presence: true
  validates :rut, presence: true
  validates :rut, uniqueness: true
  
end
