Rails.application.routes.draw do

  mount PiggybakStripe::Engine => "/piggybak_stripe"
end
