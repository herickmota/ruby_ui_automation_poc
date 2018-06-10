class HomePage < SitePrism::Page
  set_url '/#/'

  element :user_menu, '.usermenu'
  elements :navbar, '.nav .dropdown a'
  elements :options, '.nav .dropdown.open a'

  def navigateTo(menu)
    navbar.each { |option| option.click if option.text == menu[:menu] }
    options.each { |option|
      if option.text == menu[:item]
        option.click
        break
      end}
  end

end
