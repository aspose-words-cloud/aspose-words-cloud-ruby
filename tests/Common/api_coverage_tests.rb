#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="api_coverage_tests.rb">
#   Copyright (c) 2018 Aspose.Words for Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
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
# --------------------------------------------------------------------------------------------------------------------
#
module AsposeWordsCloud
  require_relative '../base_test_context'
  class ApiCoverageTests < BaseTestContext
    #
    # Test for all API methods are covered by tests
    #
    def test_api_coverage
      require_all '../Document'
      require_all '../Common'
      require_all '../DocumentActions'
      require_all '../DocumentElements'
      arr = [BookmarksTests, AppendDocumentTests, CommentsTests, CompareDocumentTests, ConvertDocumentTests,
              DocumentStatisticsTests, DocumentTests, LoadWebDocumentTests, RevisionsTests,
              SplitDocumentTests, DocumentPropertiesTests, DocumentProtectionTests, DrawingObjectsTests, FieldsTests,
              FormFieldTests, MailMergeFieldsTests, FootnoteTests, HeaderFootersTests, HyperlinksTests, MacrosTests,
              ExecuteMailMergeTests, ExecuteTemplateTests, MathObjectsTests, PagesTests, ParagraphsTests, RunsTests,
              SectionsTests, TablesTests, TextTests, WatermarkTests, FontCacheTests, ClassificationTests]
      test_methods = []
      arr.each {|el| (test_methods << el.instance_methods(false).select{ |m| /test_folder/ !~ m}).flatten! }
      methods = @words_api.public_methods(false).select {|m| /api_client/ !~ m }.map {|m| m.to_s}
      uncovered_methods = []
      methods.each do |el|
        unless test_methods.any? {|elem| elem.to_s === 'test_' + el.to_s}
          uncovered_methods.insert(0, el.to_s)
        end
      end
      assert uncovered_methods.empty?, 'There are methods you have to cover with tests ' + uncovered_methods.to_s
    end

    # requires all files recursively inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
