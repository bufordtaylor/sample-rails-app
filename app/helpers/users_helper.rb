module UsersHelper

  def gravatar_for(user, options = { size: 50 })
    grav_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    grav_url = "https://secure.gravatar.com/avatar/#{grav_id}?s=#{size}"
    image_tag(grav_url, alt: user.name, class: "gravatar")
  end
end
