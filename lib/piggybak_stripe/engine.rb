module PiggybakStripe
  class Engine < ::Rails::Engine
    isolate_namespace PiggybakStripe
    require 'stripe'
    
    initializer "piggybak_realtime_shipping.add_calculators" do
      Piggybak.config do |config|
        #Ensures that stripe is the only calculator because Piggybak
        #only supports one active calculator
        config.payment_calculators = ["::Piggybak::PaymentCalculator::Stripe"]
      end
    end
  end
end
