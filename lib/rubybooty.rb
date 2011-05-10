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
      name = ask("Entrants Name (enter 'done' to finish): ")
      break if name.downcase == "done"
      entries = ask("Number of Entries: (integer only)", Integer)
      entrants[name] = entries
    end

    agree("Run Now? (yes/no)")

    entries = []
    entrants.each { |k,v| v.times { entries << k }}

    puts entries.shuffle!.first + " is the winner! AARRR!"
  end
end
