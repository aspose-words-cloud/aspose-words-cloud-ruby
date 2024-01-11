# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="pdf_permissions.rb">
#   Copyright (c) 2024 Aspose.Words for Cloud
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

  # Specifies the operations that are allowed to a user on an encrypted PDF document.
  class PdfPermissions
    DISALLOWALL = "DisallowAll".freeze
    PRINTING = "Printing".freeze
    MODIFYCONTENTS = "ModifyContents".freeze
    CONTENTCOPY = "ContentCopy".freeze
    MODIFYANNOTATIONS = "ModifyAnnotations".freeze
    FILLIN = "FillIn".freeze
    CONTENTCOPYFORACCESSIBILITY = "ContentCopyForAccessibility".freeze
    DOCUMENTASSEMBLY = "DocumentAssembly".freeze
    HIGHRESOLUTIONPRINTING = "HighResolutionPrinting".freeze
    ALLOWALL = "AllowAll".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PdfPermissions.constants.select{|c| PdfPermissions::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #PdfPermissions" if constantValues.empty?
      value
    end
  end
end
