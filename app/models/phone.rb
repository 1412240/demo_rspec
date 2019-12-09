class Phone < ActiveRecord::Base
  belongs_to :user
  enum phone_type: %i[home work mobile]
end
