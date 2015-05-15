class Like < ActiveRecord::Base

  belongs_to :post
  belongs_to :user

  # enum count: [:no_like, :yes_like]

end
