class CreateDokueis < ActiveRecord::Migration
  def self.up
    create_table :dokueis do |t|
      t.String :title

      t.timestamps
    end
  end

  def self.down
    drop_table :dokueis
  end
end
