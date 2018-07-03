class AddAttachmentImageToMenus < ActiveRecord::Migration[4.2]
  def self.up
    change_table :menus do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :menus, :image
  end
end
