Refinery::PagesController.class_eval do

  def search
    @results = Refinery::Page.find_with_index(params[:query].to_ascii)
  end


end