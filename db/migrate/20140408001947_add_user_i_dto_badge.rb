class AddUserIDtoBadge < ActiveRecord::Migration
  def change
    change_table :badges do |t|
      t.references :user
    end
  end
end
