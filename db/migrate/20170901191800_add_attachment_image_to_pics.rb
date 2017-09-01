class AddAttachmentImageToPics < ActiveRecord::Migration[5.0]
  def self.up
    change_table :pics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pics, :image
  end
end
