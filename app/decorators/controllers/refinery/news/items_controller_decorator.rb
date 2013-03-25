Refinery::News::ItemsController.class_eval do

  def find_published_news_items
    @items = Refinery::News::Item.published.translated.paginate :page => params[:page],
                                                                :per_page => 3
  end
end