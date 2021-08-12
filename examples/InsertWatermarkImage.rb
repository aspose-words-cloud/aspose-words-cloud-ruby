AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
insert_request = InsertWatermarkImageRequest.new('Sample.docx', nil, nil, nil, nil, nil, nil, nil, nil, nil, 'Sample.png')
@words_api.insert_watermark_image(insert_request)