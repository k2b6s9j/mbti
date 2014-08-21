module Mbti

  # An instance of this class will provide proper representation of a single Myers-Briggs personality type.
  class Type
    
    # @!attribute attitude
    #   @return [Integer] representation of the attitude trait of the type
    # @!attribute perceiving_function
    #   @return [Integer] representation of the perceiving function trait of the type
    # @!attribute judging_function
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
    
    # Checks if the type will have the extraverted trait.
    #
    # @return [boolean] if the trait is extraverted
    def extraverted?
      if @attitude < 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the introverted trait.
    #
    # @return [boolean] if the trait is introverted
    def introverted?
      if @attitude > 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the intuitive trait.
    #
    # @return [boolean] if the trait is intuitive
    def intuitive?
      if @perceiving_function < 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the observant trait.
    #
    # @return [boolean] if the trait is observant
    def observant?
      if @perceiving_function > 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the thinking trait.
    #
    # @return [boolean] if the trait is thinking
    def thinking?
      if @judging_function < 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the feeling trait.
    #
    # @return [boolean] if the trait is feeling
    def feeling?
      if @judging_function > 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the judging trait.
    #
    # @return [boolean] if the trait is judging
    def judging?
      if @lifestyle < 0
        true
      else
        false
      end
    end
    
    # Checks if the type will have the perceiving trait.
    #
    # @return [boolean] if the trait is perceiving
    def perceiving?
      if @lifestyle > 0
        true
      else
        false
      end
    end

  end

end
