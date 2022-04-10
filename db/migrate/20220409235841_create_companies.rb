class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.text :observations

      t.timestamps
    end
  end
end
