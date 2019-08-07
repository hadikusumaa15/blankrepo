class CreateMySqls < ActiveRecord::Migration[5.2]
  def change
    create_table :my_sqls do |t|
      t.string :title
      t.text :Content

      t.timestamps
    end
  end
end
