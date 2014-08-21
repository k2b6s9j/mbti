module Mbti

  # An instance of this class will provide proper representation of a single Myers-Briggs personality type.
  class Type
    
    # @!attribute attitude
    #   @return [Integer] representation of the attitude trait of the type
    # @!attribute perceiving_function
    #   @return [Integer] representation of the perceiving function trait of the type
    # @!attribute perceiving_function
    #   @return [Integer] representation of the judguing function trait of the type
    # @!attribute lifestyle
    #   @return [Integer] representation of the lifestyle trait of the type
    attr_accessor :attitude, :perceiving_function, :judging_function, :lifestyle
    
    # Creates an instance of the Type class
    #
    # @param [Integer] attitude The scale representing the attitude trait of the type.
    # @param [Integer] perceiving_function The scale representing the perceiving function trait of the type.
    # @param [Integer] judging_function The scale representing the judging function trait of the type.
    # @param [Integer] lifestyle The scale representing the lifestyle trait of the type.
    def initialize(attitude, perceiving_function, judging_function, lifestyle)
      @attitude = attitude
      @perceiving_function = perceiving_function
      @judging_function = judging_function
      @lifestyle = lifestyle
    end
    
    # Returns true if the type has a tendancy towards extraversion.
    # Returns false if the type does not.
    def extraverted?
      if @attitude < 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards introversion.
    # Returns false if the type does not.
    def introverted?
      if @attitude > 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards intuition.
    # Returns false if the type does not.
    def intuitive?
      if @perceiving_function < 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards observation.
    # Returns false if the type does not.
    def observant?
      if @perceiving_function > 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards thinking.
    # Returns false if the type does not.
    def thinking?
      if @judging_function < 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards feeling.
    # Returns false if the type does not.
    def feeling?
      if @judging_function > 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards judging.
    # Returns false if the type does not.
    def judging?
      if @lifestyle < 0
        true
      else
        false
      end
    end
    
    # Returns true if the type has a tendancy towards perceiving.
    # Returns false if the type does not.
    def perceiving?
      if @lifestyle > 0
        true
      else
        false
      end
    end

  end

end
