class RoutesTrain < ActiveRecord::Base
  belongs_to :route
  belongs_to :train
end
