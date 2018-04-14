class CreateStatusUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :status_updates do |t|
      t.text :status_post

      t.timestamps
    end
  end
end
