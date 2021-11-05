class Collage < ApplicationRecord
    has_many :designs
    accepts_nested_attributes_for :designs
end
