
require 'date'

module AsposeWordsCloud

  class ReportBuildOptions
    
    NONE = "None".freeze
    
    ALLOWMISSINGMEMBERS = "AllowMissingMembers".freeze
    
    REMOVEEMPTYPARAGRAPHS = "RemoveEmptyParagraphs".freeze
    
    INLINEERRORMESSAGES = "InlineErrorMessages".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ReportBuildOptions.constants.select{|c| ReportBuildOptions::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #ReportBuildOptions" if constantValues.empty?
      value
    end
  end

end
