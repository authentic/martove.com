Refinery::PagesController.class_eval do
  before_filter :find_all_blog_posts, :only => [:home]
  before_filter :find_tags, :only => [:home]

  def search
    @my = Refinery::Page.find_with_index(params[:query].to_ascii)
  end


  protected

  def find_all_blog_posts
    @blog_posts = Refinery::Blog::Post.live.order("published_at ASC").limit(5)

  end

  def find_tags
    @tags = Refinery::Blog::Post.tag_counts_on(:tags)
  end
end