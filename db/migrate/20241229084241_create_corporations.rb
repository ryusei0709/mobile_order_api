class CreateCorporations < ActiveRecord::Migration[7.2]
  def change
    create_table :corporations, id: :bigint, unsigned: true do |t|
      t.string :name
      t.timestamps
    end
  end
end
