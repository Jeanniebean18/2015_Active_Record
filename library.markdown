# where
###string
Client.where("orders_count = ?", params[:orders])

Client.where("orders_count = '2'")
SELECT * from clients where orders_count = '2';
###hash
User.where({ name: "Joe", email: "joe@example.com" })
SELECT * FROM users WHERE name = 'Joe' AND email = 'joe@example.com'

#find with joins (table joins)

User.joins(:posts).where({ "posts.published" => true })
User.joins(:posts).where({ posts: { published: true } })

User.joins(:posts).where("posts.created_at < ?", Time.now)



#ordering

Client.order(:created_at)
####OR
Client.order("created_at")

## desc and asc
Client.order(created_at: :desc)
#### OR
Client.order(created_at: :asc)
#### OR
Client.order("created_at DESC")
#### OR
Client.order("created_at ASC")