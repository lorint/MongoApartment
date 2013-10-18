class Building
  include Mongoid::Document

  field :address, type: String
  field :style, type: String
  field :has_doorman, :type => Boolean
  field :is_walkup, :type => Boolean
  field :num_floors, :type => Integer, default: 3
  field :apartments, :type => Hash, default: {}

  has_many :apartments, autosave: true

  # def initialize(address, style, has_doorman, is_walkup, num_floors)
  #   @address = address
  #   @style = style
  #   @has_doorman = has_doorman
  #   @is_walkup = is_walkup
  #   @num_floors = num_floors
  #   @apartments = {}
  # end

  def to_s
    "Building at #{address} has #{@apartments.count} apartments."
  end
end