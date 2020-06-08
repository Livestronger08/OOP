Class Image

    def initialize(image)
        @image = image
    end

    def blur_man(distance)
        distance.times do
            find_ones
        end
        manhattan_image
    end

    def blur
        if row_number != 0
            @image[row_number - 1][col_number] = 1
        end
        if row_number != image.length - 1
            @image[row_number + 1][col_number] = 1
        end
        if col_number != 0
            @image[row_number][col_number - 1] = 1
        end

        first_row = image[0]
        if col_number != first_row.length - 1
            @image[row_number][col_number + 1] = 1
        end
    end

    def find_ones
        ones = []
        @image.each_with_index do |row, row_number|
            row.each_with_index do |item, col_number|
                if item == 1
                    ones.push [row_number, col_number]
                end
            end
        end
            ones.each do |pair|
            row_number, col_number = pair
            blur(row_number, col_number)
        end
    end

    def manhattan_image
        @image.each do |row|
            row.each do |item|
                print item
            end
            puts
        end
    end
end

image = Image.new([
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

image.blur_man(3)