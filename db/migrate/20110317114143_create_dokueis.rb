class CreateDokueis < ActiveRecord::Migration
  def self.up
    create_table :dokueis do |t|
      t.string :title
      t.integer :size
      t.string :content_type
      t.string :filename

      t.timestamps
    end
  end

  def self.down
    drop_table :dokueis
  end
end
