def tag(tag_name, attributes = nil)
  name_value = attributes == nil ? nil : " #{attributes[0]}=\"#{attributes[1]}\""
  "<#{tag_name}#{name_value}>" + yield + "</#{tag_name}>"
end

# run in irb for testing
def test

  result = tag("h1") do
    "Some Title"
  end
  puts result

  result = tag("a", ["href", "www.google.com"]) do
    "Google it"
  end
  puts result

  result = tag("a", ["href", "www.google.com"]) do
    tag("h1") do
      "Google it"
    end
  end
  puts result
end
