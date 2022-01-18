# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="form_field_checkbox.rb">
#   Copyright (c) 2022 Aspose.Words for Cloud
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

  # FormField checkbox element.
  class FormFieldCheckbox
    # Gets or sets the link to the document.
    attr_accessor :link

    # Gets or sets the node id.
    attr_accessor :node_id

    # Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited.
    attr_accessor :calculate_on_exit

    # Gets or sets a value indicating whether a form field is enabled.
    attr_accessor :enabled

    # Gets or sets the entry macro name for the form field.
    attr_accessor :entry_macro

    # Gets or sets the exit macro name for the form field.
    attr_accessor :exit_macro

    # Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1.
    attr_accessor :help_text

    # Gets or sets the form field name.
    attr_accessor :name

    # Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
    attr_accessor :own_help

    # Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus.
    attr_accessor :own_status

    # Gets or sets text, displayed in the status bar when a form field has the focus.
    attr_accessor :status_text

    # Gets or sets the size of the checkbox in points. Has effect only when IsCheckBoxExactSize is true.
    attr_accessor :check_box_size

    # Gets or sets the checked status of the check box form field.
    attr_accessor :checked

    # Gets or sets a value indicating whether the size of the textbox is automatic or specified explicitly.
    attr_accessor :is_check_box_exact_size
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link' => :'Link',
        :'node_id' => :'NodeId',
        :'calculate_on_exit' => :'CalculateOnExit',
        :'enabled' => :'Enabled',
        :'entry_macro' => :'EntryMacro',
        :'exit_macro' => :'ExitMacro',
        :'help_text' => :'HelpText',
        :'name' => :'Name',
        :'own_help' => :'OwnHelp',
        :'own_status' => :'OwnStatus',
        :'status_text' => :'StatusText',
        :'check_box_size' => :'CheckBoxSize',
        :'checked' => :'Checked',
        :'is_check_box_exact_size' => :'IsCheckBoxExactSize'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link' => :'WordsApiLink',
        :'node_id' => :'String',
        :'calculate_on_exit' => :'BOOLEAN',
        :'enabled' => :'BOOLEAN',
        :'entry_macro' => :'String',
        :'exit_macro' => :'String',
        :'help_text' => :'String',
        :'name' => :'String',
        :'own_help' => :'BOOLEAN',
        :'own_status' => :'BOOLEAN',
        :'status_text' => :'String',
        :'check_box_size' => :'Float',
        :'checked' => :'BOOLEAN',
        :'is_check_box_exact_size' => :'BOOLEAN'
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

      if attributes.key?(:'CalculateOnExit')
        self.calculate_on_exit = attributes[:'CalculateOnExit']
      end

      if attributes.key?(:'Enabled')
        self.enabled = attributes[:'Enabled']
      end

      if attributes.key?(:'EntryMacro')
        self.entry_macro = attributes[:'EntryMacro']
      end

      if attributes.key?(:'ExitMacro')
        self.exit_macro = attributes[:'ExitMacro']
      end

      if attributes.key?(:'HelpText')
        self.help_text = attributes[:'HelpText']
      end

      if attributes.key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.key?(:'OwnHelp')
        self.own_help = attributes[:'OwnHelp']
      end

      if attributes.key?(:'OwnStatus')
        self.own_status = attributes[:'OwnStatus']
      end

      if attributes.key?(:'StatusText')
        self.status_text = attributes[:'StatusText']
      end

      if attributes.key?(:'CheckBoxSize')
        self.check_box_size = attributes[:'CheckBoxSize']
      end

      if attributes.key?(:'Checked')
        self.checked = attributes[:'Checked']
      end

      if attributes.key?(:'IsCheckBoxExactSize')
        self.is_check_box_exact_size = attributes[:'IsCheckBoxExactSize']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          link == other.link &&
          node_id == other.node_id &&
          calculate_on_exit == other.calculate_on_exit &&
          enabled == other.enabled &&
          entry_macro == other.entry_macro &&
          exit_macro == other.exit_macro &&
          help_text == other.help_text &&
          name == other.name &&
          own_help == other.own_help &&
          own_status == other.own_status &&
          status_text == other.status_text &&
          check_box_size == other.check_box_size &&
          checked == other.checked &&
          is_check_box_exact_size == other.is_check_box_exact_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [link, node_id, calculate_on_exit, enabled, entry_macro, exit_macro, help_text, name, own_help, own_status, status_text, check_box_size, checked, is_check_box_exact_size].hash
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

  end
end
