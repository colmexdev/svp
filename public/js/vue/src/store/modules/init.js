export default {
    namespaced: true,
    state: {
        repo: '',
        base_url: 'https://repositorio.colmex.mx/',
        url: "https://repositorio.colmex.mx/catalog.json?f%5Bmember_of_collections_ssim%5D%5B%5D=Violencia%20y%20Paz",
        //url: "https://repositorio.colmex.mx/catalog.json?f[project_tesim][]=test_eime",
        video_url: "http://biblio-rep.colmex.mx/catalog.json?f[project_tesim][]=test_video",
        modalFacets: false
    },
    mutations: {
        set_repo(state, repo) {
			 state.repo = repo;
        },
        set_url(state, url){
            state.url = url;
        },
        set_modalFacets(state, value){
            state.modalFacets = value;
        }
    },
    getters: {
        repo(state){
            return state.repo
        },
        url(state){
            return state.url
        },
        modalFacets(state){
            return state.modalFacets
        },
        base_url(state){
            return state.base_url;
        },
        video_url(state){
            return state.video_url;
        }
    },
    actions: {
        async get_data({ state, commit },send_url) {
            await axios.get(state.url)
               .then(response => {
                   var repository = filter_data(response.data.response);
                   commit('set_repo', repository);
               })
       }
    }
}