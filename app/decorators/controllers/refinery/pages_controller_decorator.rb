Refinery::PagesController.class_eval do

  def search
    @pages = Refinery::Page.find_with_index(params[:query].to_ascii)
  end


end