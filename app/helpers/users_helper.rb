module UsersHelper

  # Return the gravatar of a given user
  def gravatar_for(user, options = {size: 40})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png?size=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
