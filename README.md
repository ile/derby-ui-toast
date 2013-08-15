#derby-toast

Notification messages ([toasts](http://en.wikipedia.org/wiki/Toast_(computing\))) for Derby.

![toast](https://f.cloud.github.com/assets/433707/966450/571f6b72-0549-11e3-946b-8b062879d7c5.png)

##Requirements

- [Node.js](http://nodejs.org)
- [Derby](http://derbyjs.com/)


##Installation

Using [npm](https://npmjs.org/)

`npm install derby-toast`

In app.js:

```javascript
var app;
app = require('derby').createApp(module)
	.use(require('derby-toast'));

```

##Usage

###In templates

```html
<derby-toast:toast>

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
timeout: 5000
```

###Removing messages

Messages will disappear in 5 seconds by default. They can also be removed by clicking the message dialog box.
