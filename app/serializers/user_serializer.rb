class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :password_digest, :password, :password_confirmation, :address_line, :address_line2, :postcode, :town_city, :country, :image
end
