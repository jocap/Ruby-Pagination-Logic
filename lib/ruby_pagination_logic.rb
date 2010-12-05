# Pagination Logic for Ruby.
# === by John Ankarström ===

# http://jocap.github.com/Ruby-Pagination-Logic
# See LICENSE.txt.

module RPL
  
  def self.paginate(page = 1, limit = 10)
    if page > 1
      offset = limit * (page - 1)
      return offset
    else
      return 0
    end
  end
  
  def self.next(page)
    begin
      return page + 1
    rescue NoMethodError => e
      return false
    end
  end
  
  def self.prev(page)
    begin
      return page - 1
    rescue NoMethodError => e
      return false
    end
  end
end