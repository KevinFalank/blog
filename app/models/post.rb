class Post < ActiveRecord::Base
  has_many :sections
  has_many :tags, through: :sections

  validates :body, :presence => true
  validates :title, :presence => true
  validates :author, :presence => true

  def self.get_list
    Post.all.to_a
  end

  def self.get_single_post(id)
    Post.find(id)
  end

  def self.delete_post(id)
    Post.find(id).destroy
  end

  def self.delete_post(id)
    Post.find(id).destroy
  end

  def self.save_post(post_data)
    post = nil
    if post_data["id"] == ""
      #create new record
      post = Post.new(title:post_data["title"], author:post_data["author"], body:post_data["body"])
      # save tags....TODO
      process_tags(post_data["tags"])
    else
      #save existing
      post = get_single_post(post_data["id"])
      post.title = post_data["title"]
      post.author = post_data["author"]
      post.body = post_data["body"]
      # save tags....TODO
      process_tags(post_data["tags"])
    end
    post.save
  end

  def process_tags(tags)
    # tags =  tags.split(',').map do |name|
    #           tag = Tag.find_by(name: name)
    #           tag.nil? ? Tag.create(name: name) : tag
    #         end
    # tags.each { |tag| post.tags << tag }
  end
end
