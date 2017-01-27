class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :city
      t.string :state
      t.references :creator, index: true

      t.timestamps null: false
    end
    add_foreign_key(:events, :users, column: :creator_id)
    add_foreign_key(:comments, :events)
    add_foreign_key(:groups, :events)
  end
end
