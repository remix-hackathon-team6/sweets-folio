class Shouhin < ActiveRecord::Base
        has_many :Shouhins
        has_many :Evals, :through => :Shouhins

end
