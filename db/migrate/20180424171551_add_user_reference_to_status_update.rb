class AddUserReferenceToStatusUpdate < ActiveRecord::Migration[5.1]
  def change
    add_reference :status_updates, :user, foreign_key: true
  end
end
