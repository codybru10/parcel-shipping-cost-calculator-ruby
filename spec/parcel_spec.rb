require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns volume based on inputted dimensions") do
      exam_parcel = Parcel.new(4, 2, 4, 10)
      expect(exam_parcel.volume()).to(eq(32))
    end

    it("returns cost to ship based on volume and weight") do
      exam_parcel = Parcel.new(4, 2, 4, 20)
      expect(exam_parcel.cost_to_ship()).to(eq(16))
    end

  end
end
