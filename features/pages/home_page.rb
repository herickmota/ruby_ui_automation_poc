class HomePage < SitePrism::Page
  set_url '/#/'

  element :user_menu, '.usermenu'
  elements :navbar, '.dropdown-toggle'
  elements :options, 'ul .dropdown-menu'

  def searchMenu(menu)
    for link in navbar
      puts link.text
      if link.text == menu
          click_on(link)
          sleep 5
          break
      end
    end

  end

  def searchMenuItem(item)
    for op in options
      puts op.text
    end
  end


end
