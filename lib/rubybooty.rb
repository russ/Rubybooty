require "highline/import"

module Rubybooty
  class Array
    def shuffle!
      size.downto(1) { |n| push delete_at(rand(n)) }
      self
    end
  end

  def self.run
    entrants = {}

    while true
      while true
        name = ask("Entrants name (enter 'done' to finish): ")
        break if name.downcase == "done"
        entries = ask("Number of entries: (integer only)", Integer)
        entrants[name] = entries
      end
    
      sum = entrants.values.inject(0,&:+)
      if agree("Total entries: #{sum}\nRun now? (yes/no)")
        break
      end
    end

    entries = []
    entrants.each { |k,v| v.times { entries << k }}
    winner = entries.shuffle!.first
    if winner
      puts "#{winner} is the winner! AARRR!" 
    else
      puts "No winner."
    end
  end
end
