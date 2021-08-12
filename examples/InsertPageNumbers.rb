AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
insert_request = InsertPageNumbersRequest.new('Sample.docx', request_page_number, nil, nil, nil, nil, nil, nil, nil)
@words_api.insert_page_numbers(insert_request)