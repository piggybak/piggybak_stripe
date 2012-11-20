require 'piggybak_stripe/payment_decorator'

module PiggybakStripe
  class Engine < ::Rails::Engine
    isolate_namespace PiggybakStripe
    require 'stripe'
    
    config.to_prepare do
      Piggybak::Payment.send(:include, ::PiggybakStripe::PaymentDecorator)
    end
    
    initializer "piggybak_realtime_shipping.add_calculators" do
      Piggybak.config do |config|
        #Ensures that stripe is the only calculator because Piggybak
        #only supports one active calculator
        config.payment_calculators = ["::PiggybakStripe::PaymentCalculator::Stripe"]
      end
    end
  end
end
