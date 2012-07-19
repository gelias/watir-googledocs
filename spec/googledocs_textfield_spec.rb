require 'rubygems'
require 'watir-webdriver'
require 'rspec'

describe "Look for browser elements" do


	before(:each) {puts 'iniciou'}

	after(:each) {}


	it "Fill first name field" do
        # Cria uma instancia do firefox e abre o formulário no google docs
		firefox = Watir::Browser.new :firefox
		firefox.goto 'https://docs.google.com/spreadsheet/viewform?formkey=dHFQdmltaDdaYkFjVVVwd1dQXzJQSEE6MQ#gid=0'
		first_field = firefox.text_field :id => 'entry_0'
		first_field.exists?.should be(true)
		firefox.close

	end
end