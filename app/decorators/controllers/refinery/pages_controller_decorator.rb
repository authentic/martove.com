Refinery::PagesController.class_eval do

  def search
    @my = Refinery::Page.find_with_index(params[:query].to_ascii)
  end


end