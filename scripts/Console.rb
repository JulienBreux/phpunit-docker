require 'colorize'

module Console
  CHARS = {
    :top => {:left => "╔", :right => "╗"},
    :horizontal => "═",
    :vertical => "║",
    :bottom => {:left => "╚", :right => "╝"}
  }
  PADDING = 2

  def self.display_box(title)
    centered_title = title.center(title.length + (PADDING * 2))
    horizontal_bar = (CHARS[:horizontal]  * (title.length + (PADDING * 2)))

    puts (CHARS[:top][:left] + horizontal_bar + CHARS[:top][:right]).light_blue
    puts (CHARS[:vertical] + centered_title + CHARS[:vertical]).light_blue
    puts (CHARS[:bottom][:left] + horizontal_bar + CHARS[:bottom][:right]).light_blue
  end

  def self.display_done(done)
    puts "  ✔︎ #{done}".green
  end

  def self.display_error(error)
    puts "  ✘ #{error}".red
  end

  def self.display_info(info)
    puts "  #{info}".light_yellow
  end
end
