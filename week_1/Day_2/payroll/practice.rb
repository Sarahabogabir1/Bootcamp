#with hashes you have to use the square brackets to access the values.
#categorie is chocolate
candies = {
	:chocolate => {
		:brands => [
		{
		  :products => [
			0,
			1,
			{ :name => "Kit Kat" }
			]
		   }
		  ]
		 }
	    }
puts candies [:chocolate] [:brands] [0] [:products] [2] [:name] #should print "Kit Kat"
#its a hash because it has key label and name instead of a number


hash = {

	:wait=> [:zero, :one, {
	=>:two]
	:wut=> [:one, [ [ :hello 
		[0, 1, 2, 3, 4, 5, 6, 7, 8, { :bbq => 9 }]
		] 
		 ] 

		]
	#one array inside of an array
}


puts hash[:wait][2][:wut][1][0][9][:bbq]
hash[:bbq]


array = {
	:secret:
	:unlock:



}

puts array [0[5][:secret][:unlock][;1]

#Skillcrush example-------------------------------------------------------------------------

ice_cream_01 = { flavor: "butter pecan", brand: "Bruster's" }
ice_cream_02 = { flavor: "blood orange sorbet", brand: "Marios" }
ice_cream_03 = { flavor: "double chocolate", brand: "Udderly Cool" }

favorite_flavor = ice_cream_01[:flavor]
brand = ice_cream_01[:brand]

puts "My favorite ice cream flavor is #{brand} #{favorite_flavor}."



