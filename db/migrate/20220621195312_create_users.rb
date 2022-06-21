class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :tipo_persona
      t.string :documento
      t.date :fecha_emision_del_documento
      t.date :fecha_vencimiento_del_documento
      t.string :nombre
      t.string :correo
      t.string :tel1
      t.string :tel2

      t.timestamps
    end
  end
end
