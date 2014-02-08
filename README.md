#derby-ui-toast

Notification messages ([toasts](http://en.wikipedia.org/wiki/Toast_(computing\))) for Derby.

![toast](https://f.cloud.github.com/assets/433707/966450/571f6b72-0549-11e3-946b-8b062879d7c5.png)

##Requirements

- [Node.js](http://nodejs.org)
- [Derby](http://derbyjs.com/)


##Installation

Using [npm](https://npmjs.org/)

`npm install derby-ui-toast`

In app.js:

```javascript
var app;
app = require('derby').createApp(module)
	.use(require('derby-ui-toast'));

```

##Usage

###In templates

```html
<derby-ui-toast:toast>

```

###Adding messages

```javascript
model.toast(type, message, options);
```

*type* : string, the default possibilities are:

- 'info'
- 'success'
- 'warning'
- 'error'

*message*: string

*options*: object

### options

- *sticky*  
	default: false
- *timeout*  
	default: 5000
- *click*  
	default: none

###Examples:

```javascript
model.toast('info', 'Everything is ok!');
model.toast('success', 'It worked!');
model.toast('warning', 'Beware!');
model.toast('error', 'An error happened!', { sticky: true });
model.toast('error', 'An error happened again!', { timeout: 1000 });
model.toast('error', 'And again!', { click: myFunction });
```


###Removing messages

Messages will disappear in 5 seconds by default. They can also be removed by clicking the message dialog box.

## Beware

The namespace `derby-ui-toast` will be changed later to `ui`.