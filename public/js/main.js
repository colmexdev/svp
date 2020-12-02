
import routes from '/js/vue/src/router/routes.js'
import App from '/js/vue/src/App.vue.js'
import Doc from '/js/vue/src/Doc.vue.js'
import Video from '/js/vue/src/Video.vue.js'
import languaje from '/js/vue/src/components/languajes.vue.js'
import { store } from '/js/vue/src/store/store.js'
import { i18n } from '/js/vue/src/plugins/i18n.js'

Vue.config.productionTip = false;
Vue.config.devtools = false;
Vue.config.debug = false;

var app = new Vue({
	el: '#app',
	store,
	i18n,
	router:routes,
	components: {
		'App': App,
		'Doc': Doc,
		'Video': Video,
		'languaje': languaje	
	}
})
