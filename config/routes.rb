Rails.application.routes.draw do
  
  get("/", {:controller=> "zebra", :action=> "home"})
  get("/square/new", {:controller=> "zebra", :action=> "new_square_calc"})
  get("/square/results", {:controller=> "zebra", :action=> "square_results"})
  get("/square_root/new", {:controller=> "zebra", :action=> "new_square_root_calc"})
  get("/square_root/results", {:controller=> "zebra", :action=> "square_root_results"})
  get("/payment/new", {:controller=> "zebra", :action=> "new_payment_calc"})
  get("/payment/results", {:controller=> "zebra", :action=> "payment_results"})
  get("/random/new", {:controller=> "zebra", :action=> "new_random_calc"})
  get("/random/results", {:controller=> "zebra", :action=> "random_results"})
  
end
