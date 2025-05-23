# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="form_field_text_input.rb">
#   Copyright (c) 2025 Aspose.Words for Cloud
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# ------------------------------------------------------------------------------------

require 'date'

module AsposeWordsCloud

  # FormField text input element.
  class FormFieldTextInput
    # Gets or sets the link to the document.
    attr_accessor :link

    # Gets or sets the node id.
    attr_accessor :node_id

    # Gets or sets the form field name.
    attr_accessor :name

    # Gets or sets a value indicating whether a form field is enabled.
    # If a form field is enabled, its contents can be changed as the form is filled in.
    attr_accessor :enabled

    # Gets or sets text, displayed in the status bar when a form field has the focus.
    # If the OwnStatus property is set to true, the StatusText property specifies the status bar text. If the OwnStatus property is set to false, the StatusText property specifies the name of an AutoText entry that contains status bar text for the form field.
    attr_accessor :status_text

    # Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus.
    # If true, the text specified by the StatusText property is displayed. If false, the text of the AutoText entry specified by the StatusText property is displayed.
    attr_accessor :own_status

    # Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1.
    # If the OwnHelp property is set to True, HelpText specifies the text string value. If OwnHelp is set to False, HelpText specifies the name of an AutoText entry that contains help text for the form field.
    attr_accessor :help_text

    # Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
    # If True, the text specified by the HelpText property is displayed. If False, the text in the AutoText entry specified by the HelpText property is displayed.
    attr_accessor :own_help

    # Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited.
    # Setting CalculateOnExit only affects the behavior of the form field when the document is opened in Microsoft Word. Aspose.Words never updates references to the form field.
    attr_accessor :calculate_on_exit

    # Gets or sets the entry macro name for the form field.
    # The entry macro runs when the form field gets the focus in Microsoft Word.
    attr_accessor :entry_macro

    # Gets or sets the exit macro name for the form field.
    # The exit macro runs when the form field loses the focus in Microsoft Word.
    attr_accessor :exit_macro

    # Gets or sets text formatting for the text form field.
    # If the text form field contains regular text, then valid format strings are "", "UPPERCASE", "LOWERCASE", "FIRST CAPITAL" and "TITLE CASE". The strings are case-insensitive.If the text form field contains a number or a date/time value, then valid format strings are number or date and time format strings.
    attr_accessor :text_input_format

    # Gets or sets the type of the text form field.
    attr_accessor :text_input_type

    # Gets or sets the default string or a calculation expression of the text form field.
    # The meaning of this property depends on the value of the TextInputType property.When TextInputType is Regular or Number, this string specifies the default string for the text form field. This string is the content that Microsoft Word will display in the document when the form field is empty.When TextInputType is Calculated, then this string holds the expression to be calculated. The expression needs to be a formula valid according to Microsoft Word formula field requirements. When you set a new expression using this property, Aspose.Words calculates the formula result automatically and inserts it into the form field.
    attr_accessor :text_input_default

    # Gets or sets the maximum length for the text field. Zero when the length is not limited.
    attr_accessor :max_length

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'Link',
        :'node_id' => :'NodeId',
        :'name' => :'Name',
        :'enabled' => :'Enabled',
        :'status_text' => :'StatusText',
        :'own_status' => :'OwnStatus',
        :'help_text' => :'HelpText',
        :'own_help' => :'OwnHelp',
        :'calculate_on_exit' => :'CalculateOnExit',
        :'entry_macro' => :'EntryMacro',
        :'exit_macro' => :'ExitMacro',
        :'text_input_format' => :'TextInputFormat',
        :'text_input_type' => :'TextInputType',
        :'text_input_default' => :'TextInputDefault',
        :'max_length' => :'MaxLength'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'WordsApiLink',
        :'node_id' => :'String',
        :'name' => :'String',
        :'enabled' => :'BOOLEAN',
        :'status_text' => :'String',
        :'own_status' => :'BOOLEAN',
        :'help_text' => :'String',
        :'own_help' => :'BOOLEAN',
        :'calculate_on_exit' => :'BOOLEAN',
        :'entry_macro' => :'String',
        :'exit_macro' => :'String',
        :'text_input_format' => :'String',
        :'text_input_type' => :'String',
        :'text_input_default' => :'String',
        :'max_length' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Link')
        self.link = attributes[:'Link']
      end

      if attributes.key?(:'NodeId')
        self.node_id = attributes[:'NodeId']
      end

      if attributes.key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.key?(:'Enabled')
        self.enabled = attributes[:'Enabled']
      end

      if attributes.key?(:'StatusText')
        self.status_text = attributes[:'StatusText']
      end

      if attributes.key?(:'OwnStatus')
        self.own_status = attributes[:'OwnStatus']
      end

      if attributes.key?(:'HelpText')
        self.help_text = attributes[:'HelpText']
      end

      if attributes.key?(:'OwnHelp')
        self.own_help = attributes[:'OwnHelp']
      end

      if attributes.key?(:'CalculateOnExit')
        self.calculate_on_exit = attributes[:'CalculateOnExit']
      end

      if attributes.key?(:'EntryMacro')
        self.entry_macro = attributes[:'EntryMacro']
      end

      if attributes.key?(:'ExitMacro')
        self.exit_macro = attributes[:'ExitMacro']
      end

      if attributes.key?(:'TextInputFormat')
        self.text_input_format = attributes[:'TextInputFormat']
      end

      if attributes.key?(:'TextInputType')
        self.text_input_type = attributes[:'TextInputType']
      end

      if attributes.key?(:'TextInputDefault')
        self.text_input_default = attributes[:'TextInputDefault']
      end

      if attributes.key?(:'MaxLength')
        self.max_length = attributes[:'MaxLength']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      text_input_type_validator = EnumAttributeValidator.new('String', ["Regular", "Number", "Date", "CurrentDate", "CurrentTime", "Calculated"])
      return false unless text_input_type_validator.valid?(@text_input_type)

      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_input_type Object to be assigned
    def text_input_type=(text_input_type)
      validator = EnumAttributeValidator.new('String', ["Regular", "Number", "Date", "CurrentDate", "CurrentTime", "Calculated"])
      if text_input_type.to_i == 0
        unless validator.valid?(text_input_type)
          raise ArgumentError, "invalid value for 'text_input_type', must be one of #{validator.allowable_values}."
        end
        @text_input_type = text_input_type
      else
        @text_input_type = validator.allowable_values[text_input_type.to_i]
      end
    end


    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          link == other.link &&
          node_id == other.node_id &&
          name == other.name &&
          enabled == other.enabled &&
          status_text == other.status_text &&
          own_status == other.own_status &&
          help_text == other.help_text &&
          own_help == other.own_help &&
          calculate_on_exit == other.calculate_on_exit &&
          entry_macro == other.entry_macro &&
          exit_macro == other.exit_macro &&
          text_input_format == other.text_input_format &&
          text_input_type == other.text_input_type &&
          text_input_default == other.text_input_default &&
          max_length == other.max_length
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, node_id, name, enabled, status_text, own_status, help_text, own_help, calculate_on_exit, entry_macro, exit_macro, text_input_format, text_input_type, text_input_default, max_length].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        if value[:'$type']
            type = value[:'$type'][0..-4]
        end

        temp_model = AsposeWordsCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    def collectFilesContent(resultFilesContent)
    end

    def validate()
      raise ArgumentError, 'Property name in FormFieldTextInput is required.' if self.name.nil?
      raise ArgumentError, 'Property text_input_format in FormFieldTextInput is required.' if self.text_input_format.nil?
      raise ArgumentError, 'Property text_input_default in FormFieldTextInput is required.' if self.text_input_default.nil?
      unless self.link.nil?
          self.link.validate
      end

    end

  end
end
