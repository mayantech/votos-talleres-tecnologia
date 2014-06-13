json.array!(@temas) do |tema|
  json.extract! tema, :id, :titulo, :descripcion
  json.url tema_url(tema, format: :json)
end
