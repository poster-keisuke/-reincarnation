# coding: shift_jis

module Scene1

  class Director
    def initialize
      @bg_img = Image.load("images/storyback/ftob.png")
      @font=Font.new(32)
    end

    def play
      Window.draw(0, 0, @bg_img)
      if Input.keyPush?(K_RETURN)
        Scene.set_current_scene(:fishgame)
      end
    end
  end

end
