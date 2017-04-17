require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it("outputs 'Ping' if divisible by 3") do
    expect(3.ping_pong()).to eq([1, 2, "Ping"])
  end
  it("outputs 'Pong' if divisible by 5") do
    expect(5.ping_pong()).to eq([1, 2, "Ping", 4, "Pong"])
  end
  it("outputs 'PingPong' if divisible by 3") do
    expect(15.ping_pong()).to eq([1, 2, "Ping", 4, "Pong", "Ping", 7, 8, "Ping", "Pong", 11, "Ping", 13, 14, "PingPong"])
  end
end

describe('String#leet') do
  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leet).to(eq("3l3phant"))
  end

 it('replaces every "o" in a string with a "0"') do
    expect("boo boo".leet).to(eq("b00 b00"))
  end

 it('replaces every "I" in a string with a "1"') do
    expect("I like Ike".leet).to(eq("1 lik3 1k3"))
  end

 it('replaces every "s" in a string with a "z"') do
    expect("roses".leet).to(eq("r0z3z"))
  end

  it('does NOT replace the first letter when it is an s') do
    expect("sassafrass".leet).to(eq("sazzafrazz"))
  end

  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream".leet).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am"))
  end
end

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end
  it('is true if the coordinates are horizontally in line with each other') do
    expect([1,1].queen_attack?([8,1])).to(eq(true))
  end
  it('is true if the coordinates are vertically in line with each other') do
    expect([1,1].queen_attack?([1,5])).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,2].queen_attack?([6,6])).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,3].queen_attack?([1,4])).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,3].queen_attack?([3,4])).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,3].queen_attack?([1,2])).to(eq(true))
  end
  it('is true if the coordinates are diagonally in line with each other') do
    expect([2,3].queen_attack?([3,2])).to(eq(true))
  end

end

describe('String#clock_degrees') do
  it('no smaller angle to find') do
    expect("12:30".clock_degrees()).to eq(165)
  end
  it('no smaller angle to find') do
    expect("6:00".clock_degrees()).to eq(180)
  end
  it('no smaller angle to find, with both hands together') do
    expect("12:00".clock_degrees()).to eq(0)
  end
  it('find smaller angle to find') do
    expect("12:05".clock_degrees()).to eq(27.5)
  end
  it('find smaller angle to find') do
    expect("12:45".clock_degrees()).to eq(112.5)
  end
end
