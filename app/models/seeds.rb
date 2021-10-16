class Seeds
  def create_post(comments_count:)
    Post.create(
      title: FFaker::Lorem.sentence,
      body: FFaker::Lorem.paragraph,
      comments_count: comments_count
    )
  end

  def build_comment(post)
    {
      post_id: post.id,
      body: FFaker::Lorem.paragraph,
      created_at: Time.current,
      updated_at: Time.current
    }
  end

  def build_comments(post:, count:)
    count.times.map { build_comment(post) }
  end

  def create_posts(count, comments_count:)
    puts "Creating #{count} posts with #{comments_count} comments"

    count.times do
      post = create_post(comments_count: comments_count)
      comments = build_comments(post: post, count: comments_count)
      Comment.insert_all(comments)
    end
  end
end
