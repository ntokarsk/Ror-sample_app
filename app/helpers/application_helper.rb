module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    return base_title if page_title.empty?
    return page_title + " | " + base_title
  end
end

=begin
def random_subdomain
  return ('a'..'z').to_a.shuffle[0..7]
  #tmp = tmp.shuffle
  #tmp = tmp[0..7]
  #return tmp
end
=end