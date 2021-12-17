class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :recommended_by
      t.boolean :complete, default: false
      t.timestamps
    end
  end
end
