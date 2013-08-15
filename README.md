#derby-toast

Notification messages ([toasts](http://en.wikipedia.org/wiki/Toast_(computing)) for Derby.

##Requirements

- [Node.js](http://nodejs.org)
- [Derby](http://derbyjs.com/)


##Installation

Using [npm](https://npmjs.org/)

`npm install derby-toast`

Or from the sources:

```
git clone git://github.com/ile/derby-toast.git
cd derby-toast
npm install
make
```

##Usage

###Initialization

In app.js:

```javascript
var app;
app = require('derby').createApp(module)
	.use(require('derby-toast'));

```

###In templates

```html
<toast:toast>

```

###Adding messages

```javascript
model.toast('info', 'Everything is ok!');
model.toast('success', 'It worked!');
model.toast('warning', 'Beware!');
model.toast('error', 'An error happened!');

```

Messages will disappear in 5 seconds by default. This can be configured:

```javascript
model.toast('info', 'Everything is ok!', { sticky: true });
model.toast('info', 'Everything is ok!', { timeout: 3000 });
```

Default options are:

```
sticky: false
timeout: 50000
```

###Removing messages

Messages will disappear in 5 seconds by default. They can also be removed by clicking the message dialog box.

##License

The MIT License
