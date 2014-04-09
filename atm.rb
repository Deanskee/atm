
print `clear`

puts "Welcome, to the ATM! How may I service you today?"
sleep(0.25)
puts	"- Balance (b = balance)"
sleep(0.25)
puts 	"- Withdraw (w = withdraw"
sleep(0.25)
puts	"- Deposit (d = Deposit)"
sleep(0.25)
puts	"- Quit (q = Quit)"
sleep(0.25)

pin_number = 1234
balance = 100

input = gets.chomp
puts "Please enter your pin number."
pin_number = gets.chomp.to_i

if pin_number == 1234

	case input
		when "b"
			puts "your balance is #{balance}"
		
		when "w"
			puts "how much do you want to withdraw?"
			withdraw_amount = gets.chomp
			if withdraw_amount.to_i > balance
				puts "Fail, you dont have enough money bitch!"
				balance -= (withdraw_amount.to_i * 0.05)
				puts "Your balance #{balance}" 
			end
		when "d"
			puts "How much do you want to deposit?"
			deposit_amount = gets.chomp
			balance = deposit_amount.to_i + balance
			puts "you deposited #{deposit_amount} your balance #{balance}"
		when "q"
				puts "goodbye"
		else

			puts "Wrong input! Welcome to the ATM! How may I service you today?"
			sleep(0.25)
			puts	"- Balance (b = balance)"
			sleep(0.25)
			puts 	"- Withdraw (w = withdraw"
			sleep(0.25)
			puts	"- Deposit (d = Deposit)"
			sleep(0.25)
			puts	"- Quit (q = Quit)"
			sleep(0.25)

	end

end


