class Location < ApplicationRecord
	MIN_MAGNITUDE = [2.5, 3.5, 4.5, 5]
	RADIUS = [100, 200, 300, 400, 500]

  validates :nickname, :locname, presence: true

  validates :latitude, numericality: {greater_than_or_equal_to: -90, less_than_or_equal_to: 90}

  validates :longitude, numericality: {greater_than_or_equal_to: -180, less_than_or_equal_to: 180}

  validates :minmagnitude, numericality: {only_decimal: true}, inclusion: {in: MIN_MAGNITUDE}

	validates :maxradiuskm, numericality: {only_integer: true}, inclusion:  {in: RADIUS}


end
