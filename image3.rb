class Image
    def initialize(image)
      @image = image
    end
  
    def find_ones
      list_of_ones = [] #create empty array to track found 1's
  
        @image.each_with_index do |row, row_number|
          row.each_with_index do |item, col_number|
  
            if item == 1
              list_of_ones.push( [row_number, col_number] )
            end
          end
        end
        list_of_ones
    end
    
    def output_image
      @image.each do |image|
        puts image.join(' ')
      end
    end
  
    def blur
      list_of_ones = find_ones
      @image.each_with_index do |row, row_number|
        row.each_with_index do |item, col_number|
          list_of_ones.each do |found_row_number, found_col_number|
            if row_number == found_row_number && col_number == found_col_number
              @image[row_number -1][col_number] = 1 unless row_number == 0
              @image[row_number +1][col_number] = 1 unless row_number == 0
              @image[row_number][col_number -1] = 1 unless col_number == 0
              @image[row_number][col_number +1] = 1 unless col_number == 0
              
            end
          end 
        end
      end
    end 
  end
  
  image1 = Image.new([
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ])
  
  image2 = Image.new([
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ])

  image3 = Image.new([
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 1]
  ])

  image1.blur
  image1.output_image
  
  image2.blur(2)
  image2.output_image
  
  image3.blur
  image3.output_image 
