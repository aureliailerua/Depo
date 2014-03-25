# By using the &block notation, we get Ruby to pass the 
# block that was given to hidden_div_if() down to content_tag().


module ApplicationHelper
	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end
end
