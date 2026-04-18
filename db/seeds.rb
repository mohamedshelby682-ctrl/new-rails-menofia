# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

# Users
u1 = User.create(name: "Mohamed", email: "mohamed@test.com")
u2 = User.create(name: "Ali", email: "ali@test.com")

# Posts
p1 = Post.create(title: "Post 1", body: "Hello", user_id: u1.id)
p2 = Post.create(title: "Post 2", body: "World", user_id: u2.id)

# Editors
e1 = Editor.create(name: "Editor1", email: "e1@test.com")
e2 = Editor.create(name: "Editor2", email: "e2@test.com")

# Assign editors to posts
PostEditor.create(post: p1, editor: e1)
PostEditor.create(post: p1, editor: e2)
PostEditor.create(post: p2, editor: e1)

#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
