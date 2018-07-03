class Exercise
  def edit_distance(from, to)
    from_split = from.split("")
    to_split = to.split("")
    [get_best(from_split, to_split), get_best(to_split, from_split)].min
  end

  def get_best(first_word, second_word)
    best_changes_count = [first_word.size, second_word.size].max
    0.upto(first_word.size-1) do |start|
      current_changes_count = start
      0.upto(second_word.size-1) do |index_char|
          if first_word[start+index_char] && second_word[index_char] != first_word[start+index_char]
            current_changes_count += 1
          end
      end
      chars_to_remove =  start + (second_word.size - first_word.size).abs
      current_changes_count += chars_to_remove > 0 ? chars_to_remove : 0
      if current_changes_count < best_changes_count
        best_changes_count = current_changes_count
      end
    end
    best_changes_count
  end
end
