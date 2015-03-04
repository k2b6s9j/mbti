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
    # @param [Numeric, Symbol] attitude The scale representing the attitude trait of the type.
    # @param [Numeric, Symbol] perceiving_function The scale representing the perceiving function trait of the type.
    # @param [Numeric, Symbol] judging_function The scale representing the judging function trait of the type.
    # @param [Numeric, Symbol] lifestyle The scale representing the lifestyle trait of the type.
    #
    # @raise [StandardError] when the type cannot be properly created
    #
    # @return [Mbti::Type] the instance of {Mbti::Type} created
    def initialize(attitude, perceiving_function, judging_function, lifestyle)
      case attitude
        when(attitude.is_a? Numeric)
          @attitude = attitude
        when(attitude == :introvert || :i)
          @attitude = 1
        when(attitude == :extrovert || :e)
          @attitude = -1
        else
          raise StandardError, "Improper Attitude Trait Parameter: #{attitude}"
      end

      case perceiving_function
        when(perceiving_function.is_a? Numeric)
          @perceiving_function = perceiving_function
        when(perceiving_function == :intuitive || :n)
          @perceiving_function = -1
        when(perceiving_function == :observant || :observing || :s)
          @perceiving_function = 1
        else
          raise StandardError, "Improper Perceiving Function Trait Parameter: #{perceiving_function}"
      end

      case judging_function
        when(judging_function.is_a? Numeric)
          @judging_function = judging_function
        when(judging_function == :thinking || :t)
          @judging_function = -1
        when(judging_function == :feeling || :f)
          @judging_function = 1
        else
          raise StandardError, "Improper Judging Function Trait Parameter: #{judging_function}"
      end

      case lifestyle
        when(lifestyle.is_a? Numeric)
          @lifestyle = lifestyle
        when(lifestyle == :judging || :j)
          @lifestyle = -1
        when(lifestyle == :perceiving || :p)
          @lifestyle = 1
        else
          raise StandardError, "Improper Lifestyle Trait Parameter: #{lifestyle}"
      end

      self
    end

    # @!group Type Trait Detection Methods

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

    # @!endgroup

  end

end
