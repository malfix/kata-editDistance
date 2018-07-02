class Exercise
  def edit_distance(from, to)
    from_split = from.split("")
    to_split = to.split("")
    changes = 0
    0.upto(to_split.size - 1) do |index|
      puts "confronto #{to_split[index]} con #{from_split[index]} in posizione #{index}"
      if to_split[index] != from_split[index]
        changes += 1
      end
    end
    (from_split.size-1).downto(to_split.size) do |index|
      puts "rimuovo carattere #{from_split[index]} in posizione #{index}"
        changes += 1
    end
    changes
  end
end
