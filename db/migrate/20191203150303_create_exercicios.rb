class CreateExercicios < ActiveRecord::Migration[6.0]
  def change
    create_table :exercicios do |t|
      t.string :name
      t.string :url
      t.string :categoria

      t.timestamps
    end
  end
end
