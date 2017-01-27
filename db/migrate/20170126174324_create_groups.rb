class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :member, index: true
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key(:groups, :users, column: :member_id)
  end
end
