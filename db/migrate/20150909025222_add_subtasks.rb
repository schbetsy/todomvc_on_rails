class AddSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.references :todo
      t.boolean :completed, default: false, null: false
      t.string :title
      t.timestamps
    end
  end
end
