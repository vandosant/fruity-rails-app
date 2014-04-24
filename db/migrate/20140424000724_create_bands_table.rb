class CreateBandsTable < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :band
      t.string :genre
      t.date :founded
    end
  end
end
