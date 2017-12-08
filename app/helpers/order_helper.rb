module OrderHelper

  def get_product(product_id)
    Product.find(product_id)
  end

  def get_final_amount(line_items)
    final_amount = 0
    line_items.each {|line_item| final_amount += line_item.total_price_cents }
    return final_amount / 100
  end
end
