#Refinery::Portfolio::Admin::ItemsController.class_eval do
#  def new
#    @item = Refinery::Portfolio::Item.new(:gallery_id => find_gallery.id)
#
#  end
#
#  private
#  def find_gallery
#    defined?(@gallery) && !@gallery.nil? ? @gallery.id : nil
#  end
#
#
#end