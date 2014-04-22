class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.column :name, :string
      t.column :description, :string
    end
  end
end
