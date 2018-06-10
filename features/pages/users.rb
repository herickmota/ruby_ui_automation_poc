class Users < SitePrism::Page

  element :create_user_btn, '.btn-create'
  elements :accounts_list, '.trAccounts td + td'
  elements :account_checkBox, '.trAccounts td input'

  def clickCreateUser
    create_user_btn.click
  end

  def selectAccount(account)
    i = 0
    accounts_list.each_with_index { |line, index|
       if line.text == account
          i = index
          break
       end}
    find(:xpath, "//tr[#{i+2}]//input").set(true)
    sleep 3
  end

end
