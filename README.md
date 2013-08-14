#Derby-toast

Notification messages for Derby.

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

var derby = require('derby')
    , toast = require('derby-toast')
    , app = toast.init(derby.createApp(module));


```

###Adding messages

```javascript
model.toast('error', 'An error happened!');

```

... where `model` if your model object, wherever it is available.

###In templates

Defining the template component:

```html
<toast:>
    {#each _page.toast.success as :msg}<div class="alert static alert-success">{{:msg}}</div>{/}
    {#each _page.toast.info as :msg}<div class="alert static alert-info">{{:msg}}</div>{/}
    {#each _page.toast.warning as :msg}<div class="alert static alert-warning">{{:msg}}</div>{/}
    {#each _page.toast.error as :msg}<div class="alert static alert-error">{{:msg}}</div>{/}
```

Using it:

```html
<app:toast>

```

##License

The MIT License
