
# just look for all singles and double as you go down and keep repeating this.. if you get to the end without returning you are good
# IE
# 121
# 1 that's good 2 that's good 1 that's good if all good then count + 1 
# 12 that's good 1 that's good ... no more doubles if all good then count + 1
# 1 that's good 21 that's good  if all good then count + 1 
# test this on other cases

$str = "2022"
$strlength = $str.length
$count = 0

def decode(str)
	if str[0].to_i >= 1 and str[0].to_i <= 9
		$count += 1 if str.length == 1
		decode(str[1..-1])
	end

	if str[0..1].to_i >= 10 and str[0..1].to_i <= 26
		$count += 1 if str.length == 2
		p str.length
		decode(str[2..-1])
	end
end



decode($str)

p " count is #{$count}"