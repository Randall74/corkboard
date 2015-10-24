class AddAttachmentImageToPegs < ActiveRecord::Migration
  def self.up
    change_table :pegs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pegs, :image
  end
end
