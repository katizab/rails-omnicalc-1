class ZebraController < ApplicationController

  def home

    render({ :template => "calculations/home" })


  end  


  def new_square_calc

    render({ :template => "calculations/new_square_calc" })
  end

  def square_results

    @the_num= params.fetch("users_number").to_f
    @the_result=   @the_num**2

    render({ :template => "calculations/square_results" })
  end

  
  def new_square_root_calc

    render({ :template => "calculations/new_square_root_calc" })
  end

  def square_root_results

    @the_num= params.fetch("users_number").to_f
    @the_result=   @the_num**0.5

    render({ :template => "calculations/square_root_results" })
  end

  def new_payment_calc

    render({ :template => "calculations/new_payment_calc" })
  end

  def payment_results
    r = params.fetch("user_apr").to_f / 100 / 12
    @p_apr = params.fetch("user_apr").to_f.to_fs(:percentage, { :precision => 4 })
    @p_years = params.fetch("user_years").to_i
    n = @p_years * 12
    pv = params.fetch("user_pv").to_f
    @p_principal = pv.to_fs(:currency)
    p = (r * pv) / (1 - ((1 + r) ** (-n)))
    @p_result = p.to_fs(:currency)

    render({ :template => "calculations/payment_results" })
  end

  def new_random_calc

    render({ :template => "calculations/new_random_calc" })
  end

  def random_results
    @the_min= params.fetch("user_min").to_f
    @the_max= params.fetch("user_max").to_f
    @the_result=   rand(@the_min..@the_max)
    render({ :template => "calculations/random_results" })
  end

 
  

  

  

end
