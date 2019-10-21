#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="watermark_tests.rb">
#   Copyright (c) 2019 Aspose.Words for Cloud
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
  class WatermarkTests < BaseTestContext
    def test_folder
      'DocumentElements/Watermarks'
    end

    #
    # Test for removing watermark
    #
    def test_delete_watermark
      filename = 'test_doc.docx'
      remote_name = 'TestDeleteWatermark.docx'

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = DeleteWatermarkRequest.new remote_name, remote_test_folder + test_folder
      result = @words_api.delete_watermark request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting watermark image
    #
    def test_insert_watermark_image
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertWatermarkImage.docx'
      dest_name = remote_test_out + remote_name
      rotation_angle = 0
      image = File.open(local_common_folder + 'aspose-cloud.png', 'rb')

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)

      request = InsertWatermarkImageRequest.new remote_name, image, remote_test_folder + test_folder,
                                                            nil,nil,nil, dest_name,
                                                            nil,nil, rotation_angle
      result = @words_api.insert_watermark_image request
      assert_equal FALSE, result.nil?
    end

    #
    # Test for inserting watermark text
    #
    def test_insert_watermark_text
      filename = 'test_multi_pages.docx'
      remote_name = 'TestInsertWatermarkText.docx'
      dest_name = remote_test_out + remote_name
      body = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})

      upload_file File.join(local_common_folder, filename), File.join(remote_test_folder, test_folder, remote_name)
      
      request = InsertWatermarkTextRequest.new remote_name, body, remote_test_folder + test_folder,
                                                            nil,nil,nil, dest_name
      result = @words_api.insert_watermark_text request
      assert_equal FALSE, result.nil?
    end
  end
end
