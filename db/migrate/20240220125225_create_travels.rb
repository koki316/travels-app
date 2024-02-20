class CreateTravels < ActiveRecord::Migration[7.0]
  def change
    create_table :travels do |t|
      t.string :title,              null: false
      t.string :description,        null: false
      t.string :place,              null: false
      t.references :user,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
