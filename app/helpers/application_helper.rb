module ApplicationHelper
  def item_options(event)
    my_array = '['
    event.items.each { |item|
      my_array << "{value: #{item.id}, text: \"#{item.name}\"},"
    }
    my_array.chop!
    #binding.pry
    my_array << ']'

  end
end
