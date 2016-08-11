class Post < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "382x382#", thumb: "200x200#" }, default_url: "/public/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
