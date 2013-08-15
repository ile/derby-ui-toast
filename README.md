#derby-toast

Notification messages ([toasts](http://en.wikipedia.org/wiki/Toast_(computing)) for Derby.

![](https://f.cloud.github.com/assets/433707/966377/51ab2fc2-0545-11e3-960f-8cf9ce085715.png)

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

###Adding messages

```javascript
model.toast('info', 'Everything is ok!');
model.toast('success', 'It worked!');
model.toast('warning', 'Beware!');
model.toast('error', 'An error happened!');

```

... where `model` if your model object, wherever it is available.

###In templates

```html
<toast:toast>

```

##License

The MIT License
