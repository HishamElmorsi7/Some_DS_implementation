#A map stores information in key-value pairs,where the keys are always unique. When implemented with arrays,a map might 
#look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

class Map
    def initialize
        @underlying_array = []
    end

    #Notice that each key must be unique
    def keys
        keys = []
        underlying_array.each { |arr| keys << arr.first }
        keys
    end

    def is_unique_key?(k)
        keys = self.keys()
        !keys.include?(k)
    end

    def val_idx(key)
        subArr_idx = keys.index(key) 
        val_idx = [subArr_idx, 1]
        val_idx
    end

    def set(key, val)
        if is_unique_key?(key)
            underlying_array << [key, val]
        else
            val_idx = val_idx(key)
            underlying_array[val_idx.first][val_idx.last] = val
        end
        val
    end

    def get(key)
        val_idx = val_idx(key)
        underlying_array[val_idx.first][val_idx.last]
    end

    def show
        deep_dup(underlying_array)
    end

    def delete(key)
        sub_arr_idx_of_key = val_idx(key).first
        underlying_array.delete_at(sub_arr_idx_of_key)
        key
    end

    private

    def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
    end  


    attr_reader :underlying_array
end