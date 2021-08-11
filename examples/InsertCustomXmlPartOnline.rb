AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_custom_xml_part = CustomXmlPartInsert.new({:Id => 'hello', :Data => '<data>Hello world</data>'})
insert_request = InsertCustomXmlPartOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_custom_xml_part, nil, nil, nil, nil, nil)
@words_api.insert_custom_xml_part_online(insert_request)