Refinery::Page.class_eval do
  acts_as_indexed :fields => [:ascii_title, :ascii_body]

  private

  def ascii_title
    self.title.to_ascii
  end

  def ascii_body
    self.body.to_ascii
  end
end
