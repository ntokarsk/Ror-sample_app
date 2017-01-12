require 'url_shortener'
require 'uri'
module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    return base_title if page_title.empty?
    return page_title + " | " + base_title
  end

  def tmp_method(content)
    return "" unless content.present?

    authorize = UrlShortener::Authorize.new 'ntokarsk3', 'R_1f8855bd5d204896b7b854adf471b586'
    client = UrlShortener::Client.new(authorize)

    zmienna = client.shorten('http://www.swmansion.com/')

    "zmienna:  #{zmienna}"
  end

  def extractUrls(text)
    URI.extract(text)
  end

  def replaceUrlsWithTrackable(text)

  end
end