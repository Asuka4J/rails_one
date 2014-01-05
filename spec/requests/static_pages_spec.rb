# require 'spec_helper'

# describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end


require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
  	#case 1
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    #case 2
    it "标题测试" do
    	visit '/static_pages/home'
    	expect(page).to have_title('Jiaqing.me | HOME')
    end
  end

  describe "Help page" do
  	#case 1
  	it "it should has the content 'HELP'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('HELP')
  	end
  end

  describe "Abount page" do
  	#case 1
  	it "test about page cast 1" do
  		visit '/static_pages/about' 
  		expect(page).to have_content('ASUKA')
  	end
  end

end