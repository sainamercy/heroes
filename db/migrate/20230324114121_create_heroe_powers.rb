class CreateHeroePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :heroe_powers do |t|
      t.integer :strength, null: false, default: 0
      t.belongs_to :power, null: false, foreign_key: true
      t.belongs_to :heroe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
