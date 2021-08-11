AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_page_number = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of {NUMPAGES}'})
insert_request = InsertPageNumbersOnlineRequest.new(File.open(File.join(documents_dir, 'Common/Sample.docx')), request_page_number, nil, nil, nil, nil, nil)
@words_api.insert_page_numbers_online(insert_request)