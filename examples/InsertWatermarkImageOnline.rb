AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_image_file = File.open('Common/aspose-cloud.png')
insert_request = InsertWatermarkImageOnlineRequest.new(document: request_document, image_file: request_image_file)
@words_api.insert_watermark_image_online(insert_request)