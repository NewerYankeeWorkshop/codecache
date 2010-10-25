Given /^the following snippets:$/ do |snippets|
  Snippet.create!(snippets.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) snippet$/ do |pos|
  visit snippets_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following snippets:$/ do |expected_snippets_table|
  expected_snippets_table.diff!(tableish('table tr', 'td,th'))
end
