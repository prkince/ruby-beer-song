# Beer song by PRK
class BeerSong
  def verse(number)
    if number > 2
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    elsif number == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif number == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(start, finish)
    verses_arr = []
    verse(start) + "\n" + verse(finish) if (start - finish) == 1
    range = (finish..start).to_a
    range = range.reverse
    range.each do |number|
      verses_arr << verse(number) + "\n"
    end
    verses_arr.pop
    verses_arr << verse(finish)
    verses_arr.join('')
  end

  def lyrics
    verses(99, 0)
  end
end
