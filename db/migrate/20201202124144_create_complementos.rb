class CreateComplementos < ActiveRecord::Migration[6.0]
  def change
    create_table :complementos do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.string :apelido
      t.string :codigo
      t.string :pais
      t.text :description
      t.boolean :can_send_email
      t.integer :ano_graduacao
      t.float :temperatura_corpo
      t.decimal :preco
      t.date :aniversario
      t.time :horario_favorito

      t.timestamps
    end
  end
end
