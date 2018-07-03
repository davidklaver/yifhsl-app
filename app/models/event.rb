class Event < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100"}, default_url: "/assets/:style/missing.png"
	validates_attachment :image, :content_type => { :content_type => ["application/pdf","image/jpg","image/jpeg","image/png"] }
end  
