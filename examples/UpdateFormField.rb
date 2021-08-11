AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_form_field = FormFieldTextInput.new({:Name => 'FullName', :Enabled => true, :CalculateOnExit => true, :StatusText => '', :TextInputType => 'Regular', :TextInputDefault => 'No name'})
update_request = UpdateFormFieldRequest.new(remote_file_name, 0, request_form_field, nil, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.update_form_field(update_request)