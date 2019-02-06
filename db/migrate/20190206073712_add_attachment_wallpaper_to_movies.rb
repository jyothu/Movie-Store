class AddAttachmentWallpaperToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :wallpaper
    end
  end

  def self.down
    remove_attachment :movies, :wallpaper
  end
end
