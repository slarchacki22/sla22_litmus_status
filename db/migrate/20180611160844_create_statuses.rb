class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.boolean :current_status
      t.text :status_message

      t.timestamps null: false
    end
  end
end