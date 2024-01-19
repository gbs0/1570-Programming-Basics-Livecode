require 'date'

def xmas(year, month, day)
  date = Date.new(year, month, day)
  today = Date.today

  # Verificar se a data passada no parametro (year) é menor que o ano atual
  return "Invalid date" if today.year != year

  xmas_date = Date.new(today.year, 12, 25)

  return "Merry Late Christmas!" if date == xmas_date.next_day

  return (xmas_date - today)
end
