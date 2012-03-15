class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.text :dump

      t.timestamps
    end
  end
end
