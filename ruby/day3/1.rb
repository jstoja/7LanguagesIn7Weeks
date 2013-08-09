#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
class ActsAsCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt')
    @headers = file.gets.chomp.split(', ')

    file.each do |row|
      @result << row.chomp.split(', ')
    end
  end

  def headers
    @headers
  end

  def csv_contents
    @result
  end

  def each(&block)
    @result.each do |row|
      block.call CsvRow.new(@headers, row)
    end
  end

  def initialize
    @result = []
    read
  end
end

class CsvRow
  def initialize(headers, rows)
    @headers = headers
    @rows = rows
  end

  def method_missing(symbol)
    i = 0
    @headers.each do |header|
      if symbol.to_s == header
        return @rows[i]
      end
      i = i + 1
    end
  end
end

class RubyCsv < ActsAsCsv
end

csv = RubyCsv.new
csv.each {|row| puts row.country}

