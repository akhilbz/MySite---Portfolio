class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
  # this sees for the items that contain the data from above
end


