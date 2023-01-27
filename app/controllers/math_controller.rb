class MathController < ApplicationController
  def subtract
    render({ :template => "math_templates/subtract_form.html.erb"})
  end

  def subtract_result
    @first_num = params.fetch("subtract_one").to_f
    @second_num = params.fetch("subtract_two").to_f

    @result = @first_num - @second_num

    render({ :template => "math_templates/wizard_subtract.html.erb"})
  end

  def add
    render({ :template => "math_templates/add_form.html.erb"})
  end

  def add_results
    @first_num = params.fetch("add_one").to_f
    @second_num = params.fetch("add_two").to_f

    @results = @first_num + @second_num 
    render({ :template => "math_templates/wizard_add.html.erb"})
  end

  def multiply
    render({ :template => "math_templates/multiply_form.html.erb"})
  end

  def multiply_results
    @first_num = params.fetch("multiply_one").to_f
    @second_num = params.fetch("multiply_two").to_f

    @results = @first_num * @second_num
    render({ :template => "math_templates/wizard_multiply.html.erb"})
  end

  def divide
    render({ :template => "math_templates/divide_form.html.erb"})
  end

  def divide_results
    @first_num = params.fetch("divide_one").to_f
  end
end
