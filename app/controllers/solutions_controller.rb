class SolutionsController < ApplicationController
  def num_1
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "true" if number is greater than 11 and "false"
    # otherwise
    #==================================
    number = 23

    if number > 11
      @result = "true"
    else
      @result = "false"
    end

    render 'solution'
  end


  def num_2
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "instructor" if name is equal to "Arjun" and
    # "not instructor" otherwise
    #==================================
    name = "Bob"

    if name == "Arjun"
      @result = 'instructor'
    else
      @result = "not instructor"
    end

    render 'solution'
  end

  def num_3
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "no further effect on happiness" if money is
    # greater than 75000 and "some effect on happiness"
    # for all other cases
    #==================================
    money = 73000

    if money > 75000
      @result = "no further effect on happiness"
    else
      @result = "some effect on happiness"
    end
    render 'solution'
  end

  def num_4
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "the best" if activity is equal to "napping",
    # "the worst" if activity is equal to "cleaning" and
    # "meh" for all other cases
    #==================================
    activity = "cleaning"

    if activity == "napping"
      @result = "the best"
    elsif activity == "cleaning"
      @result = "the worst"
    else
      @result = "meh"
    end

    render 'solution'
  end

  def num_5
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "A" if score is above 89, "B" if score is above
    # 79 and "C" for all other cases
    #==================================
    score = 82

    if score > 89
      @result = "A"
    elsif score > 79
      @result = "B"
    else
      @result = "C"
    end

    render 'solution'
  end

  def num_6
    #=== Instructions ======================
    # Create a condition that sets @result equal to
    # "healthy" if food equals "fruit", "healthy" if
    # food equals "vegetables", "unhealthy" if
    # food equals "Lucky Charms" and
    # "heart attack" if food equals "cake shake"
    #==================================
    food = "cake shake"

    if food == "fruit"
      @result = "healthy"
    elsif food == "vegetables"
      @result = "healthy"
    elsif food == "Lucky Charms"
      @result = "unhealthy"
    elsif food == "cake shake"
      @result = "heart attack"
    end

    render 'solution'
  end

  def num_7
    #=== Instructions ======================
    # Create a form that asks the user how his day
    # went.
    # - If the user enters "good", respond with
    # "That's great!"
    # - If the user enters "not good", respond with
    # "Bummer"
    # - For all other cases, respond with "I see..."
    #
    # Bonus: Add more elsif statments to catch
    # other cases
    # Another Bonus: Process user input so
    # capitalization doesn't affect your response
    #
    # You'll need to create a new view
    #==================================

    render 'display_form'
  end

  def num_7_process
    response = params["response"].downcase

    if response == "good"
      @result = "That's great!"
    elsif response == "not good"
      @result = "Bummer"
    elsif response == "awful"
      @result = "Sounds like you've had a rough day"
    else
      @result = "I see..."
    end
    render 'solution'
  end
end
