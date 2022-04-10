class CreateStages < ActiveRecord::Migration[6.1]
  def change
    create_table :stages do |t|
      t.string :name
      t.text :observations
      t.string :status
      t.integer :position
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
