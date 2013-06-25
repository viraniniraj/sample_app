module UsersHelper

# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user,s={size: 54})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = s[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
