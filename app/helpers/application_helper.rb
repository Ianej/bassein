module ApplicationHelper
  def title
    nacalnyi_zagolovok = "Upravlenie basseinom"
    @title==nil ? nacalnyi_zagolovok : "#{nacalnyi_zagolovok} | #{@title}"

  end
end
