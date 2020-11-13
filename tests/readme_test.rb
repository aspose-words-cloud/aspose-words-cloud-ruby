# ------------------------------------------------------------------------------------
# <copyright company="Aspose" file="readme_test.rb">
#   Copyright (c) 2020 Aspose.Words for Cloud
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
  require_relative 'base_test_context'
  class ReadmeTests < BaseTestContext

    #
    # Test for getting document bookmark by name
    #
    def test_readme_code
        local_folder = 'Common'
        filename = 'test_multi_pages.docx'
        remote_folder = 'Readme'
        remote_name = 'TestGetBookmarkByName.docx'

        creds = get_config()
        clientSecret =  creds['ClientSecret']
        clientId =  creds['ClientId']
        baseUrl = creds['BaseUrl']

        # Start README example

        AsposeWordsCloud.configure do |config|
          config.client_data['ClientId'] = clientId
          config.client_data['ClientSecret'] = clientSecret
          config.baseUrl = baseUrl
        end

        api = WordsApi.new

        uploadRequest = UploadFileRequest.new File.new(File.join(local_common_folder, filename), 'rb'), File.join(remote_folder, remote_name)
        api.upload_file uploadRequest

        request = DeleteWatermarkRequest.new remote_name, remote_folder
        result = api.delete_watermark request

        # End README example

        writeoReadme()
    end

    def writeoReadme
        # set regexes
        startPattern = "^\\s*# Start README example\\s*$"
        endPattern = "^\\s*# End README example\\s*$"

        # set paths
        sourcePath = 'tests/readme_test.rb'
        readmePath =  "README.md"

        # read from the file
        codeLines = File.readlines(sourcePath)

        # extract readme code
        readmeCode = Array.new
        skipMode = true
        for line in codeLines do
          if skipMode
            skipMode = /#{startPattern}/.match(line).nil?
          end

          if  not skipMode
            readmeCode.push line
            skipMode = not(/#{endPattern}/.match(line).nil?)
          end
        end

        assert(readmeCode.count > 2, "Readme code has not found in readme_test.rb")

        # read readme.md
        readmeLines = File.readlines(readmePath)

        # replace readme code
        newReadmeLines = Array.new
        codeMode = false
        for line in readmeLines do
          if not codeMode
            codeMode = not(/#{startPattern}/.match(line).nil?)

            if codeMode
              newReadmeLines.concat readmeCode
            end
          end

          if codeMode
            codeMode = /#{endPattern}/.match(line).nil?
            next
          end

          if not codeMode
            newReadmeLines.push line
          end
        end

        # write readme
        File.open(readmePath, "w+") do |f|
          f.puts(newReadmeLines)
        end
    end
  end
end
