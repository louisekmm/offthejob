class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :website
      t.text :observations
      t.string :status
      t.string :name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
