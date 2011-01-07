class CreateMicroPosts < ActiveRecord::Migration
  def self.up
    create_table :micro_posts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micro_posts
  end
end
