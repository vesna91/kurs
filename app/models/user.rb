class User < ActiveRecord::Base
  #metoda koja prosljedjuje simbole
  has_one :profile, dependent: :destroy
end
