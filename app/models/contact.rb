class Contact < ApplicationRecord
validates :name, :email, :content,
   presence: true,
   length: { minimum: 1 },
   length: { maximum: 140 }
end
