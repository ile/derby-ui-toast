racer = require('racer')
Model = racer.Model
config =
  filename: __filename
  ns: 'toast'
  styles: [__dirname + '/../css/toast']

module.exports = (app, options) ->
	default_options =
		sticky: false
		timeout: 5000

	Model::toast = (type, msg, options) ->
		options ||= default_options
		sticky = options.sticky || default_options.sticky
		timeout = options.timeout || default_options.timeout
		toast =
			id: @id()
			type: type
			msg: msg
		remove = =>
			toasts = @get("_page.toast")
			if toasts
				for t, i in toasts
					if t.id is toast.id
						@remove "_page.toast", i
						return

		@unshift "_page.toast", toast, (err) ->
			setTimeout remove, options.timeout if !sticky


	app.fn 'toast.remove', (e, el) ->
		# make sure we don't remove anything we shouldn't
		app.model.at(el).remove() if app?.model?.at(el)?.path()?.substring(0,12) is '_page.toast.'

	app.createLibrary config, options

