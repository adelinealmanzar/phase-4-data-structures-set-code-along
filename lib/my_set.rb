class MySet
    def initialize(enumerable = []) #enumerable value = empty array by default if none provided
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value) #O(1)
        @hash.has_key?(value)
    end 

    def add(value) #O(1)
        @hash[value] = true #add a value as a key to the hash
        self #return the updated set
    end

    def delete(value) #O(1)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def clear
        @hash.values.delete
        self
    end
end
