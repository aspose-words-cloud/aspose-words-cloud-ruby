AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
update_request = UpdateFormFieldOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_form_field, 0, 'sections/0', nil, nil, nil, nil, nil)
@words_api.update_form_field_online(update_request)