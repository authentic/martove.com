Refinery::Page.class_eval do
  acts_as_indexed :fields => [:ascii_title, :ascii_meta_keywords, :ascii_meta_description, :ascii_menu_title, :ascii_browser_title, :ascii_all_page_part_content]
  belongs_to :gallery, :class_name => "PortfolioEntry",
             :foreign_key => :portfolio_entry_id
  private

  def ascii_title
    if title
      self.title.to_ascii
    end
  end

  def ascii_meta_keywords
    if meta_keywords
      self.meta_keywords.to_ascii
    end
  end

  def ascii_meta_description
    if  meta_description
      self.meta_description.to_ascii
    end
  end

  def ascii_menu_title
    if menu_title
      self.menu_title.to_ascii
    end
  end

  def ascii_browser_title
    if  browser_title
      self.browser_title.to_ascii
    end
  end

  def ascii_all_page_part_content
    self.all_page_part_content.to_ascii
  end
end
