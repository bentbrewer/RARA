class Program < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    description :markdown
    timestamps
  end

  has_many :findings
  has_many :estd311s, :dependent => :destroy
  has_many :estd312s, :dependent => :destroy
  has_many :estd321s, :dependent => :destroy
  has_many :estd322s, :dependent => :destroy
  has_many :estd331s, :dependent => :destroy
  has_many :estd332s, :dependent => :destroy
  has_many :estd411s, :dependent => :destroy
  has_many :estd412s, :dependent => :destroy
  has_many :estd421s, :dependent => :destroy
  has_many :estd422s, :dependent => :destroy
  has_many :estd431s, :dependent => :destroy
  has_many :estd432s, :dependent => :destroy
  has_many :estd441s, :dependent => :destroy
  has_many :estd442s, :dependent => :destroy
  has_many :estd443s, :dependent => :destroy
  has_many :estd444s, :dependent => :destroy
  has_many :estd445s, :dependent => :destroy
  has_many :estd451s, :dependent => :destroy
  has_many :estd452s, :dependent => :destroy
  has_many :estd453s, :dependent => :destroy
  has_many :estd312s, :dependent => :destroy
  has_many :estd461s, :dependent => :destroy
  has_many :estd4621s, :dependent => :destroy
  has_many :estd4622s, :dependent => :destroy
  has_many :estd4623s, :dependent => :destroy
  has_many :estd4624s, :dependent => :destroy
  has_many :estd4625s, :dependent => :destroy
  has_many :estd4626s, :dependent => :destroy
  has_many :estd4627s, :dependent => :destroy
  has_many :estd4631s, :dependent => :destroy
  has_many :estd4632s, :dependent => :destroy
  has_many :estd4633s, :dependent => :destroy
  has_many :estd4634s, :dependent => :destroy
  has_many :estd4635s, :dependent => :destroy
  has_many :estd4636s, :dependent => :destroy
  has_many :estd4637s, :dependent => :destroy
  has_many :estd4638s, :dependent => :destroy
  has_many :estd4639s, :dependent => :destroy
  has_many :estd46310s, :dependent => :destroy
  has_many :estd46311s, :dependent => :destroy
  has_many :estd46312s, :dependent => :destroy
  has_many :estd46313s, :dependent => :destroy
  has_many :estd46314s, :dependent => :destroy
  has_many :estd46315s, :dependent => :destroy
  has_many :estd46316s, :dependent => :destroy
  has_many :estd46317s, :dependent => :destroy
  has_many :estd46318s, :dependent => :destroy
  has_many :estd46319s, :dependent => :destroy
  has_many :estd46320s, :dependent => :destroy
  has_many :estd46321s, :dependent => :destroy
  has_many :estd46322s, :dependent => :destroy
  has_many :estd46323s, :dependent => :destroy
  has_many :estd46324s, :dependent => :destroy
  has_many :estd46325s, :dependent => :destroy
  has_many :estd46326s, :dependent => :destroy
  has_many :estd46327s, :dependent => :destroy
  has_many :estd46328s, :dependent => :destroy
  has_many :estd46329s, :dependent => :destroy
  has_many :estd464s, :dependent => :destroy
  has_many :estd465s, :dependent => :destroy
  has_many :estd466s, :dependent => :destroy
  has_many :estd471s, :dependent => :destroy
  has_many :estd472s, :dependent => :destroy
  has_many :estd473s, :dependent => :destroy
  has_many :estd474s, :dependent => :destroy
  has_many :estd475s, :dependent => :destroy
  has_many :estd481s, :dependent => :destroy
  has_many :estd482s, :dependent => :destroy
  has_many :estd483s, :dependent => :destroy
  has_many :estd4841s, :dependent => :destroy
  has_many :estd4842s, :dependent => :destroy
  has_many :estd4843s, :dependent => :destroy
  has_many :estd485s, :dependent => :destroy
  has_many :estd486s, :dependent => :destroy

  after_create :populate

  def populate
    Estd311.create(:name => "3.1.1", :program_id => id, :area_id => 1)
    Estd312.create(:name => "3.1.2", :program_id => id, :area_id => 2)
    Estd321.create(:name => "3.2.1", :program_id => id, :area_id => 3)
    Estd322.create(:name => "3.2.2", :program_id => id, :area_id => 4)
    Estd331.create(:name => "3.3.1", :program_id => id, :area_id => 5)
    Estd332.create(:name => "3.3.2", :program_id => id, :area_id => 6)
    Estd411.create(:name => "4.1.1", :program_id => id, :area_id => 7)
    Estd412.create(:name => "4.1.2", :program_id => id, :area_id => 8)
    Estd421.create(:name => "4.2.1", :program_id => id, :area_id => 9)
    Estd422.create(:name => "4.2.2", :program_id => id, :area_id => 10)
    Estd431.create(:name => "4.3.1", :program_id => id, :area_id => 11)
    Estd432.create(:name => "4.3.2", :program_id => id, :area_id => 12)
    Estd441.create(:name => "4.4.1", :program_id => id, :area_id => 13)
    Estd442.create(:name => "4.4.2", :program_id => id, :area_id => 14)
    Estd443.create(:name => "4.4.3", :program_id => id, :area_id => 15)
    Estd444.create(:name => "4.4.4", :program_id => id, :area_id => 16)
    Estd445.create(:name => "4.4.5", :program_id => id, :area_id => 17)
    Estd451.create(:name => "4.5.1", :program_id => id, :area_id => 18)
    Estd452.create(:name => "4.5.2", :program_id => id, :area_id => 19)
    Estd453.create(:name => "4.5.3", :program_id => id, :area_id => 20)
    Estd461.create(:name => "4.6.1", :program_id => id, :area_id => 21)
    Estd4621.create(:name => "4.6.2(1)", :program_id => id, :area_id => 22)
    Estd4622.create(:name => "4.6.2(2)", :program_id => id, :area_id => 23)
    Estd4623.create(:name => "4.6.2(3)", :program_id => id, :area_id => 24)
    Estd4624.create(:name => "4.6.2(4)", :program_id => id, :area_id => 25)
    Estd4625.create(:name => "4.6.2(5)", :program_id => id, :area_id => 26)
    Estd4626.create(:name => "4.6.2(6)", :program_id => id, :area_id => 27)
    Estd4627.create(:name => "4.6.2(7)", :program_id => id, :area_id => 28)
    Estd4631.create(:name => "4.6.3(1)", :program_id => id, :area_id => 29)
    Estd4632.create(:name => "4.6.3(2)", :program_id => id, :area_id => 30)
    Estd4633.create(:name => "4.6.3(3)", :program_id => id, :area_id => 31)
    Estd4634.create(:name => "4.6.3(4)", :program_id => id, :area_id => 32)
    Estd4635.create(:name => "4.6.3(5)", :program_id => id, :area_id => 33)
    Estd4636.create(:name => "4.6.3(6)", :program_id => id, :area_id => 34)
    Estd4637.create(:name => "4.6.3(7)", :program_id => id, :area_id => 35)
    Estd4638.create(:name => "4.6.3(8)", :program_id => id, :area_id => 36)
    Estd4639.create(:name => "4.6.3(9)", :program_id => id, :area_id => 37)
    Estd46310.create(:name => "4.6.3(10)", :program_id => id, :area_id => 38)
    Estd46311.create(:name => "4.6.3(11)", :program_id => id, :area_id => 39)
    Estd46312.create(:name => "4.6.3(12)", :program_id => id, :area_id => 40)
    Estd46313.create(:name => "4.6.3(13)", :program_id => id, :area_id => 41)
    Estd46314.create(:name => "4.6.3(14)", :program_id => id, :area_id => 42)
    Estd46315.create(:name => "4.6.3(15)", :program_id => id, :area_id => 43)
    Estd46316.create(:name => "4.6.3(16)", :program_id => id, :area_id => 44)
    Estd46317.create(:name => "4.6.3(17)", :program_id => id, :area_id => 45)
    Estd46318.create(:name => "4.6.3(18)", :program_id => id, :area_id => 46)
    Estd46319.create(:name => "4.6.3(19)", :program_id => id, :area_id => 47)
    Estd46320.create(:name => "4.6.3(20)", :program_id => id, :area_id => 48)
    Estd46321.create(:name => "4.6.3(21)", :program_id => id, :area_id => 49)
    Estd46322.create(:name => "4.6.3(22)", :program_id => id, :area_id => 50)
    Estd46323.create(:name => "4.6.3(23)", :program_id => id, :area_id => 51)
    Estd46324.create(:name => "4.6.3(24)", :program_id => id, :area_id => 52)
    Estd46325.create(:name => "4.6.3(25)", :program_id => id, :area_id => 53)
    Estd46326.create(:name => "4.6.3(26)", :program_id => id, :area_id => 54)
    Estd46327.create(:name => "4.6.3(27)", :program_id => id, :area_id => 55)
    Estd46328.create(:name => "4.6.3(28)", :program_id => id, :area_id => 56)
    Estd46329.create(:name => "4.6.3(29)", :program_id => id, :area_id => 57)
    Estd464.create(:name => "4.6.4", :program_id => id, :area_id => 58)
    Estd465.create(:name => "4.6.5", :program_id => id, :area_id => 59)
    Estd466.create(:name => "4.6.6", :program_id => id, :area_id => 60)
    Estd471.create(:name => "4.7.1", :program_id => id, :area_id => 61)
    Estd472.create(:name => "4.7.2", :program_id => id, :area_id => 62)
    Estd473.create(:name => "4.7.3", :program_id => id, :area_id => 63)
    Estd474.create(:name => "4.7.4", :program_id => id, :area_id => 64)
    Estd475.create(:name => "4.7.5", :program_id => id, :area_id => 65)
    Estd481.create(:name => "4.8.1", :program_id => id, :area_id => 66)
    Estd482.create(:name => "4.8.2", :program_id => id, :area_id => 67)
    Estd483.create(:name => "4.8.3", :program_id => id, :area_id => 68)
    Estd4841.create(:name => "4.8.4(1)", :program_id => id, :area_id => 69)
    Estd4842.create(:name => "4.8.4(2)", :program_id => id, :area_id => 70)
    Estd4843.create(:name => "4.8.4(3)", :program_id => id, :area_id => 71)
    Estd485.create(:name => "4.8.5", :program_id => id, :area_id => 72)
    Estd486.create(:name => "4.8.6", :program_id => id, :area_id => 73)
  end


  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
