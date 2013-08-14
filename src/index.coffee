racer = require('racer')
Model = racer.Model or racer["protected"].Model
toast = module.exports

toast.init = (app) ->

	Model::toast = (type, msg) -> @push "_page.toast.#{type}", msg

	app.fn 'toast.remove', (e, el) ->
		#make sure we don't remove anything we shouldn't
		if app.model.at(el).path().substring(0,12) is '_page.toast.'
			app.model.at(el).remove()
	app
