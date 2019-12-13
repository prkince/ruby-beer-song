class BeerSong
  def verse(number)
    case
    when number > 2
      return "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    when number == 2
      return "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when number == 1
      return "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      return "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(start, finish)
    versesArr = []
    if (start - finish) == 1
      return verse(start) + "\n" + verse(finish)
    end
    range = (finish..start).to_a
    range = range.reverse()
    range.each do |number|
      versesArr << verse(number) + "\n"
    end
    versesArr.pop()
    versesArr << verse(finish)
    return versesArr.join('')
  end

  def lyrics
    return verses(start, finish)
  end

end
