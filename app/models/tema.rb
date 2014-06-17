class Tema < ActiveRecord::Base
	has_many :votes, dependent: :destroy
	
	scope :activos, -> { where(active: true) }

	validates :titulo, :descripcion, presence: {:message => "Hay informacion que hace falta por ingresar"}

end
