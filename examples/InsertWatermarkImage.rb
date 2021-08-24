AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
insert_request = InsertWatermarkImageRequest.new(name: 'Sample.docx', image_file: nil, image: 'Sample.png')
@words_api.insert_watermark_image(insert_request)