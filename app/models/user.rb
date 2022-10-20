class User < ApplicationRecord
  authenticates_with_sorcery!
  
  has_many :campaigns, foreign_key: 'owner_id', dependent: :destroy
end
