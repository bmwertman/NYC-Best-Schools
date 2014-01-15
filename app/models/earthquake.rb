class Earthquake < ActiveRecord::Base
  self.rgeo_factory_generator = RGeo::Geos.factory_generator(:srid => 4326)
end