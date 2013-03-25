#Refinery::Portfolio::Admin::GalleriesController.class_eval do
#  def children
#    find_gallery
#    render :layout => false
#  end
#
#  protected
#
#  def find_parent_gallery
#    defined?(@parent_gallery) && !@parent_gallery.nil? ? @parent_gallery.id : nil
#  end
#  def find_gallery
#    defined?(@gallery) && !@gallery.nil? ? @gallery.id : nil
#  end
#end