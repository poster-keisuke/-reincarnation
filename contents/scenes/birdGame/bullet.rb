class Bullet < Sprite
  def initialize(x, y, image = nil, deg, isRight)
    image = Image.new(10, 10).circleFill(5,5,5,[0,0,0]) #半径5pxの円
    image.set_color_key([248, 247, 243])
    super
    #角度を初期化(degで与えた値をradianに)
    @rad = deg * Math::PI / 180
    @dx = 5 * isRight
    @dy = 5
    self.collision = [5,5,5]
  end

  def update
    #角度に応じてまっすぐ進む
    self.x += Math.cos(@rad) * @dx
    self.y += Math.sin(@rad) * @dy
    self.vanish if self.x >= Window.width
    #@dx = -@dx if self.x > (Window.width - self.image.width) || self.x < 0
  end

  def hit(obj)
    #image = Image.load("images/fish/fishenemymo2.png") #相対パスはmain.rbからのものを指定
    #image.set_color_key([0, 0, 0])
  end
end
