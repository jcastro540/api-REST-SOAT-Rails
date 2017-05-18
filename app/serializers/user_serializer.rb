class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :password_digest, :token, :description, :nombre, :apellido, :email, :telefono, :role
end


