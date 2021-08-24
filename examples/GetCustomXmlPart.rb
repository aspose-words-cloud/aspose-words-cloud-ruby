AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetCustomXmlPartRequest.new(name: 'Sample.docx', custom_xml_part_index: 0)
@words_api.get_custom_xml_part(request)