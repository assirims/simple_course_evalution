InvisibleCaptcha.setup do |config|
  # config.honeypots           << ['more', 'fake', 'attribute', 'names']
  config.visual_honeypots    = false
  config.timestamp_threshold = 2
  # config.timestamp_enabled   = true
  # config.injectable_styles   = false
  # config.spinner_enabled     = true

  # Leave these unset if you want to use I18n (see below)
  config.sentence_for_humans     = ''
  config.timestamp_error_message = 'هدي السرعة .. النظام يمنع ارسال النموذج في وقت قصير جداً'
end
