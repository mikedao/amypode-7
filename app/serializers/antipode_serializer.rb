class AntipodeSerializer
  include JSONAPI::Serializer

  attributes :lat, :long
end