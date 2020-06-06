class Image
  def initialize(image)
    @image = image
  end

  def find_ones
    @list_of_ones = [] #create empty array to track found 1's

    row = 0
    @image.each do |n|

      col = 0
      n.each do |m|

        if m == 1
          list_of_ones.push([row, col]) #when you find a one, track it
        end

        col +=1
      end

      row +=1
    end
  end

  #you have to do the work in this or another function in this class

  def output_image
    @image.each do |image|
      puts image.join(' ')
    end
  end

  def blur
    @list_of_ones.each do |point|
      @image [row][col - 1] = 1
      @image [row - 1][col] = 1
      @image [row][col + 1] = 1
      @image [row + 1][col] = 1
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image.find_ones
image.output_image

image.blur
image.output_image