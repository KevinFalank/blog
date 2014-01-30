# post
# t.string :author, null: false
# t.string :title, null: false
# t.text :body
20.times do
  Post.create(author: Faker::Name.first_name + " " + Faker::Name.last_name, title: Faker::Company.catch_phrase, body: Faker::Lorem.paragraphs(2)[0])
end

5.times do
  Tag.create(name: Faker::Commerce.color)
end

Section.create(tag_id: 1, post_id: 1)
Section.create(tag_id: 2, post_id: 2)
Section.create(tag_id: 1, post_id: 3)
Section.create(tag_id: 4, post_id: 4)
Section.create(tag_id: 5, post_id: 5)
Section.create(tag_id: 1, post_id: 6)
Section.create(tag_id: 2, post_id: 7)
Section.create(tag_id: 4, post_id: 8)
Section.create(tag_id: 4, post_id: 9)
Section.create(tag_id: 5, post_id: 10)
Section.create(tag_id: 2, post_id: 11)
Section.create(tag_id: 4, post_id: 12)
Section.create(tag_id: 5, post_id: 13)
Section.create(tag_id: 5, post_id: 14)
Section.create(tag_id: 5, post_id: 15)
# posts 16-20 have no tags

# tag 1 has 3 posts
# tag 2 has 3 posts
# tag 3 has no posts
# tag 4 has 4 posts
# tag 5 has 5 posts

Section.create(tag_id: 2, post_id: 1)
Section.create(tag_id: 3, post_id: 1)
Section.create(tag_id: 4, post_id: 1)
Section.create(tag_id: 5, post_id: 1)
Section.create(tag_id: 1, post_id: 2)
Section.create(tag_id: 3, post_id: 2)
