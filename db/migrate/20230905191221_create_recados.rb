class CreateRecados < ActiveRecord::Migration[5.2]
  def change
    create_table :recados do |t|
      t.string :descricao
      t.string :autor

      t.timestamps
    end
  end
end
