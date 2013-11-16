class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :role_id
      t.integer :permission_id

      t.timestamps
    end
  end
end
