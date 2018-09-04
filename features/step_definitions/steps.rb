Given("I am at Google's homepage") do
    visit("https://www.google.com.br/")
end

When("I search for {string}") do |search_query|
    fill_in('q', with: search_query)
    find(:xpath, '//*[@id="tsf"]/div[2]/div[3]/center/input[1]').click
end 

Then("the page title should be {string}") do |page_title|           
    expect(page.title).to eq(page_title)
end