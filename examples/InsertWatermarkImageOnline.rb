AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
insert_request = InsertWatermarkImageOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_watermark_image_online(insert_request)