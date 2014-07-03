#derby-ui-toast

Notification messages ([toasts](http://en.wikipedia.org/wiki/Toast_(computing\))) for Derby.

![toast](https://f.cloud.github.com/assets/433707/966450/571f6b72-0549-11e3-946b-8b062879d7c5.png)

##Requirements

- [Node.js](http://nodejs.org)
- [Derby](http://derbyjs.com/)


##Installation

Using [npm](https://npmjs.org/)

`npm install derby-ui-toast`


##Usage

Now you have to import the CSS:
```css
@import '../../node_modules/derby-ui-toast/css/style.css'
```

If you want to use the default background images on the notification boxes:
```css
@import '../../node_modules/derby-ui-toast/css/bg-images.css'
```

Or if you want to use the Font Awesome icons:

If you want to use the default background images on the notification boxes:
```css
@import '../../node_modules/derby-ui-toast/css/bg-fontawesome.css'
```

Also uou have to enable the component in JavaScrip:

```javascript
app.component(require('derby-ui-toast'));
```

```html
<view name="derby-ui-toast"></view>
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