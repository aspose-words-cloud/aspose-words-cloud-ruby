AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
update_request = UpdateCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, request_custom_xml_part, nil, nil, nil, nil, nil)
@words_api.update_custom_xml_part_online(update_request)