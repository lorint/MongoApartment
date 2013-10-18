#require 'pry'

class Apartment
  include Mongoid::Document

  field :name, :type => String
  field :rent, type: Float, default: 0
  field :sqft, type: Integer
  field :num_bedrooms, type: Integer
  field :num_bathrooms, type: Integer
  field :apartments, type: Hash, default: {}
  field :renters, type: Array, default: []

  belongs_to :building

#  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  # def initialize(name, sqft, num_bedrooms, num_bathrooms)
  #   @name = name
  #   @rent = 0
  #   @sqft = sqft
  #   @num_bedrooms = num_bedrooms
  #   @num_bathrooms = num_bathrooms
  #   @renters = []
  # end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{name} has #{sqft} sqft." # and #{@renters.count} renters."
  end
end

#binding.pry