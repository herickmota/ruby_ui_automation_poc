class Users < SitePrism::Page

  set_url "User/Create?isFromAllUsers=True"

  element :create_user_btn, '.btn-create'
  elements :accounts_list, '.trAccounts td + td'
  elements :account_checkBox, '.trAccounts td input'

  #form elements
  element :firstname, '#Firstname'
  element :lastname, '#Lastname'
  element :role, '#Role_Id'
  element :email, '#Email'
  element :password, '#Password'
  element :confirm_password, '#ConfirmPassword'
  element :timezone, '#Timezone'
  element :create_btn, '.btn-create'
  element :alert_error_message, 'div#content > div:nth-child(3)'
  element :alert_success_message, '.alert.alert-success'

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
    account_checkBox.each_with_index { |line, index|
      if index == i
        line.click
        break
      end
    }
  end

  def createUser(user)
    firstname.set user[:first_name]
    lastname.set user[:last_name]
    selectRole(user[:role])
    email.set user[:email]
    password.set user[:password]
    confirm_password.set user[:password]
    selectRegion(user[:region])
    selectTimezone(user[:timezone])
    create_btn.click
  end

  def selectRole(option)
    role.first('option', text: option).select_option
  end

  def selectRegion(region)
    find('input[id=dateFormat_' + region + ']').click
  end

  def selectTimezone(zone)
    timezone.first('option', text: zone).select_option
  end

end
