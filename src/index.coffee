racer = require('racer')
Model = racer.Model
config =
  filename: __filename

module.exports = (app, options) ->
	Model::toast = (type, msg) -> @push "_page.toast.#{type}", msg

	app.fn 'toast.remove', (e, el) ->
		#make sure we don't remove anything we shouldn't
		app.model.at(el).remove() if app?.model?.at(el)?.path()?.substring(0,12) is '_page.toast.'

	app.createLibrary config, options

