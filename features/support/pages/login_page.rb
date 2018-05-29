class LoginPage < SitePrism::Page

  set_url '/account/login'

  element :field_email, '#Email'
  element :field_pass, '#Password'
  element :button_submit, 'button[type=submit]'
  element :alert, '.help-inline'


  def login(email, pass)
    field_email.set email
    field_pass.set pass
    button_submit.click
  end

end
