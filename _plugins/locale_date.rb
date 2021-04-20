module DateFilter
  MONTHS = %w(Января Фебраля Марта Апреля Мая Июня Июля Августа Сентября Октября Ноября Декабря)

  def russian_long_date(input)
    input.strftime("%d") + " " + MONTHS[input.strftime("%m").to_i - 1]
  end
end

Liquid::Template.register_filter(DateFilter)
