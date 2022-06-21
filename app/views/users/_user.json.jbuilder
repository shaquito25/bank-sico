json.extract! user, :id, :tipo_persona, :documento, :fecha_emision_del_documento, :fecha_vencimiento_del_documento, :nombre, :correo, :tel1, :tel2, :created_at, :updated_at
json.url user_url(user, format: :json)
