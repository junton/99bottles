class Bottles
	def verse(bottles)
		"#{first_section(bottles)}\n#{second_section(bottles)}\n"
	end

	def first_section(bottles)
		ending = first_suffix(bottles)

		number_of_bottles = bottles.to_s
		if(bottles == 0)
			number_of_bottles = "No more"
		end

		"#{number_of_bottles} bottle#{ending} of beer on the wall, #{number_of_bottles.downcase} bottle#{ending} of beer."
	end

	def second_section(bottles)
		ending = second_suffix(bottles)
		if bottles == 0
			"Go to the store and buy some more, #{bottles + 99} bottles of beer on the wall."
		elsif bottles == 1
			"Take it down and pass it around, no more bottles of beer on the wall."
		else
			"Take one down and pass it around, #{bottles-1} bottle#{ending} of beer on the wall."
		end
	end

	def first_suffix(bottles)
		if(bottles == 1)
			ending = ""
		else
			ending = "s"
		end
	end

	def second_suffix(bottles)
		if(bottles - 1 == 1)
			ending = ""
		else
			ending = "s"
		end
	end
end

