Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'tj2EccUrcBc1H4hfmqDmyA', 'bEiO5LRbVktJ6GcozsuvwpnMYSaZpSm8p7t5kbeI5M'
  provider :salesforce, '3MVG9y6x0357HledZQgj1XEr5IilzYK68ewOkmN9bgVxZtyMlDY8_QqVB_Fg9GqK7.SQjoXD5fsBqF49nDHLR', '3725793166232094938'
end