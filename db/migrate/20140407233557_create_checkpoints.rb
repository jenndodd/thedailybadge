class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :title
      t.text :description

      t.references :badge

      t.timestamps
    end
  end
end
