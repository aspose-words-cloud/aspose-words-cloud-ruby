# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="Watermark_tests.rb">
#   Copyright (c) 2021 Aspose.Words for Cloud
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
module AsposeWordsCloud
  require_relative '../base_test_context'

  #
  # Example of how to work with watermarks.
  #
  class WatermarkTests < BaseTestContext
    def remote_data_folder
      remote_test_folder + '/DocumentActions/Watermark'
    end

    def local_file
      'Common/test_multi_pages.docx'
    end


    #
    # Test for adding watermark image.
    #
    def test_insert_watermark_image
      remote_file_name = 'TestInsertWatermarkImage.docx'
      remote_image_path = remote_data_folder + '/TestInsertWatermarkImage.png'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name
      upload_file File.join(local_test_folder, 'Common/aspose-cloud.png'), remote_image_path

      request = InsertWatermarkImageRequest.new(remote_file_name, nil, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil, nil, remote_image_path)

      result = @words_api.insert_watermark_image(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding watermark image online.
    #
    def test_insert_watermark_image_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request_image_file = File.open(File.join(local_test_folder, 'Common/aspose-cloud.png'))
      request = InsertWatermarkImageOnlineRequest.new(request_document, request_image_file, nil, nil, nil, nil, nil, nil, nil)

      result = @words_api.insert_watermark_image_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding watermark text.
    #
    def test_insert_watermark_text
      remote_file_name = 'TestInsertWatermarkText.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90.0})
      request = InsertWatermarkTextRequest.new(remote_file_name, request_watermark_text, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.insert_watermark_text(request)
      assert_equal false, result.nil?
    end

    #
    # Test for adding watermark text online.
    #
    def test_insert_watermark_text_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})
      request = InsertWatermarkTextOnlineRequest.new(request_document, request_watermark_text, nil, nil, nil, nil, nil)

      result = @words_api.insert_watermark_text_online(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting watermark.
    #
    def test_delete_watermark
      remote_file_name = 'TestDeleteWatermark.docx'

      upload_file File.join(local_test_folder, local_file), remote_data_folder + '/' + remote_file_name

      request = DeleteWatermarkRequest.new(remote_file_name, remote_data_folder, nil, nil, nil, remote_test_out + '/' + remote_file_name, nil, nil)

      result = @words_api.delete_watermark(request)
      assert_equal false, result.nil?
    end

    #
    # Test for deleting watermark online.
    #
    def test_delete_watermark_online
      request_document = File.open(File.join(local_test_folder, local_file))
      request = DeleteWatermarkOnlineRequest.new(request_document, nil, nil, nil, nil, nil)

      result = @words_api.delete_watermark_online(request)
      assert_equal false, result.nil?
    end
  end
end