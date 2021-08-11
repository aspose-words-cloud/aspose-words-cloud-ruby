AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
remote_file_name= 'Sample.docx'

insert_request = InsertWatermarkImageRequest.new(remote_file_name, nil, nil, nil, nil, nil, remote_file_name, nil, nil, nil, 'Sample.png')
@words_api.insert_watermark_image(insert_request)