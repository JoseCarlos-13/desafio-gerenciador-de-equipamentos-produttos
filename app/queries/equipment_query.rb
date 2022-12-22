class EquipmentQuery
  def initialize(params, equipment = Equipment.all)
    @params = params
    @equipment = equipment
  end

  def call
    query_list = @equipment
    query_list = by_name(query_list) if !@params[:name].nil?
    query_list = by_code(query_list) if !@params[:code].nil?

    query_list
  end

  private

  def by_name(query_list)
    query_list.where('name like ?', "%#{@params[:name]}%")
  end

  def by_code(query_list)
    query_list.where('code like ?', "%#{@params[:code]}%")
  end
end