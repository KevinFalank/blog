class Tag < ActiveRecord::Base
  has_many :sections
  has_many :posts, through: :sections

  validates :name, :presence => true

  def self.get_list
    Tag.all.to_a
  end

  def self.posts_with_tag(id)
    Tag.posts.all.to_a
  end

end
