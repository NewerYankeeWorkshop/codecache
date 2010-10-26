Given /^the following snippets:$/ do |snippets|
  Snippet.create!(snippets.hashes)
end

Then /^I should see the following snippets:$/ do |expected_snippets_table|
  expected_snippets_table.diff!(tableish('table tr', 'td,th'))
end

Given /^the following languages:$/ do |languages|
  Language.create!(languages.hashes)
end
