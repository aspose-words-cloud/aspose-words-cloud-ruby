AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_custom_xml_part = CustomXmlPartUpdate.new({:Data => '<data>Hello world</data>'})
update_request = UpdateCustomXmlPartRequest.new('Sample.docx', 0, request_custom_xml_part, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_custom_xml_part(update_request)