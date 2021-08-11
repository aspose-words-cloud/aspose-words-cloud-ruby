AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
insert_request = InsertHeaderFooterRequest.new('Sample.docx', '', 'FooterEven', nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_header_footer(insert_request)