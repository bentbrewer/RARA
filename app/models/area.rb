class Area < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name          :string, :name => true
    organization  :string
    chapter       :string
    num           :string
    subnum        :string
    standard      :text
    language      :markdown
    timestamps
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
