class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        new_post.author = self
    end

    def self.post_count
        counter = 0
        Post.all.each do |posts|
            counter +=1
        end
        counter
    end

end