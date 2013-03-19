Refinery::Blog::CategoriesController.class_eval do
  before_filter :find_tags

  protected
  def find_tags
    @tags = Refinery::Blog::Post.tag_counts_on(:tags)
  end
end