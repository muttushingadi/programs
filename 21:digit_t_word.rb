#To convert digit to words
###################
def d_words(k)
		my_hash=Hash.new

		my_hash={
				1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",
				6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",
				11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",
				16=>"sixteen",17=>"seventeen",18=>"eighteen",19=>"nineteen",20=>"twenty",
				30=>"thirty",40=>"fourty",50=>"fifty",60=>"sixty",70=>"seventy",
				80=>"eighty",90=>"ninty"
		}

		if k.start_with?("0")
			print "zero "
		end
		n=k.to_i
		if my_hash.has_key?(n)
			puts my_hash[n]
		elsif n<=99
			puts [my_hash[n- n%10],my_hash[n%10]].join(" ")
		elsif n<=999
			d=n%100
			if d<20
				puts [my_hash[n/100],"hundred",[my_hash[d]]].join(" ")
			else
				puts [my_hash[n/100],"hundred",my_hash[d-n%10],my_hash[n%10]].join(" ")
			end
		else
			puts "provide 3 digit input"
		end
		end
puts "enter the digit"
k=gets.chomp
d_words(k)