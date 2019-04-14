
Vue.component('button-connect', {
    data: function () {
        return {

        }
    },
    template: '<button class="button_header"><span> Se connecter </span></button>'
})

Vue.component('button-register', {
    data: function () {
        return {

        }
    },
    template: '<button class="button_header"><span> S\'inscrire </span></button>'
})

Vue.component('button-information', {
    data: function () {
        return {

        }
    },
    template: '<button class="button_container3"><span> EN SAVOIR PLUS </span></button>'
})

Vue.component('image-container2', {
    data: function () {
        return {

        }
    },
    template: '<img src="2.jpg" alt="Dossier Médicale Facilité">\n'
})


Vue.component('overlay-container2', {
    data: function () {
        return {
        }
    },
    template: '<div class="overlay"> DMF, votre Dossier Médicale Facilité !</div>'
})

Vue.component('image-container3', {
    data: function () {
        return {

        }
    },
    template: '<img src="container3.png">\n'

})

Vue.component('text-container3', {
    data: function () {
        return {

        }
    },
    template: '<p> Le DMF est un carnet de santé accessible en ligne, permettant de regrouper toutes vos informations, facilitant leur visibilité par vos différents médecins. </p>'

})


new Vue ({
    el: '#components-accueil',

});
