# Aspose.Words Cloud SDK for Ruby  
This repository contains Aspose.Words Cloud SDK for Ruby source code. This SDK allows you to work with Aspose.Words Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.

[Aspose.Words Cloud](https://products.aspose.cloud/words/family "Aspose.Words for Cloud")  
[API Reference](https://apireference.aspose.cloud/words/)  

## Key Features
* Conversion between various document-related formats (20+ formats supported), including PDF<->Word conversion
* Mail merge and reports generation 
* Splitting Word documents
* Accessing Word document metadata and statistics
* Find and replace
* Watermarks and protection
* Full read & write access to Document Object Model, including sections, paragraphs, text, images, tables, headers/footers and many others

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or get [RubyGem](https://rubygems.org/gems/aspose_words_cloud) (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites

To use Aspose Words for Cloud Ruby SDK you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

### Installation
To install this package do the following:
update your Gemfile
```ruby
gem 'aspose_words_cloud', '~> 20.6'
```
or install directly
```bash
gem install aspose_words_cloud
```

### Sample usage
```ruby
AsposeWordsCloud.configure do |config|
        config.api_key['api_key'] = AppKey
        config.api_key['app_sid'] = AppSid
        config.host = host
request = DeleteWatermarkRequest.new remote_name, remote_test_folder + test_folder
result = @words_api.delete_watermark request
```

[Tests](tests/) contain various examples of using the SDK.

## Dependencies
- Ruby 2.3 or later
- referenced packages (see [here](Gemfile) for more details)

## Licensing

All Aspose.Words Cloud SDKs, helper scripts and templates are licensed under [MIT License](https://github.com/aspose-words-cloud/aspose-words-cloud-ruby/blob/master/LICENSE). 

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/words).

## Resources

[Website](https://www.aspose.cloud/)  
[Product Home](https://products.aspose.cloud/words/family)  
[API Reference](https://apireference.aspose.cloud/words/)  
[Documentation](https://docs.aspose.cloud/display/wordscloud/Home)  
[Blog](https://blog.aspose.cloud/category/words/)  

## Other languages
We generate our SDKs in different languages so you may check if yours is available in our [list](https://github.com/aspose-words-cloud).

If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/words/curl).
