class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.integer :points, default: 50
      t.boolean :completed, default: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
