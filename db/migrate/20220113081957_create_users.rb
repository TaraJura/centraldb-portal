class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :document_type
      t.integer :document_number

      t.timestamps
    end
  end
end
