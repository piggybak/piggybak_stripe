Piggybak Stripe
=============

Integration of Stripe payment gateway with Piggybak.

Installation
-------

The following markups are supported.  The dependencies listed are required if
you wish to run the library.

1. Add piggybak_stripe gem to Gemfile
	`gem 'piggybak_stripe', :git => 'git://github.com/piggybak/piggybak_stripe.git'`
2. `bundle install`
3. Add require for piggybak_stripe to your main javascript manifest (assets/javascripts/application.js) 
	`//= require piggybak_stripe`
4. Add javascript include tag for Stripe's js library into your application layout.  NOTE: This include tag needs to go above where your main javascript files are included.<br/>
	`<script type="text/javascript" src="https://js.stripe.com/v1/"></script>`
  	`<%= javascript_include_tag "application" %>`
5. Start the app, and navigate to Rails Admin.  Create a new payment method with Stripe as the calculator and add the following Stripe keys (obtained from your Stripe account):
	*test_publishable_key
	*test_secret_key
	*live_publishable_key
	*live_secret_key
	
	![Admin Settings](https://www.evernote.com/shard/s70/sh/339b6ca3-c876-459f-a56f-4cc4ad0eafb1/8e0020484ef7129f10133764142e6e7d/res/fbc6f56a-c98a-47d7-a99a-f2771e35ecac/skitch.png)
	
6. Configure piggybak's gateway mode:  
	`config.activemerchant_mode = :test` OR `config.activemerchant_mode = :production`

