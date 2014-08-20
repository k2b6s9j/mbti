module Mbti

  # An instance of this class will provide proper representation of a single Myers-Briggs personality type.
  class Type
    
    attr_accessor :attitude, :perceiving_function, :judging_function, :lifestyle
    
    # Creates an instance of the Type class
    def initialize(attitude, perceiving_function, judging_function, lifestyle)
      @attitude = attitude
      @perceiving_function = perceiving_function
      @judging_function = judging_function
      @lifestyle = lifestyle
    end

  end

end
