module ApplicationHelper
  def zagolovok
    nacalnyi_zagolovok = "Upravlenie basseinom"
    @title==nil ? nacalnyi_zagolovok : "#{nacalnyi_zagolovok} | #{@title}"

  end
end
