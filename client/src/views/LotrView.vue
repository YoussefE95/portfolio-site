<script setup>
    import axios from 'axios';
    import { onMounted, ref } from 'vue';
    import { lotrMovies } from '../components/store.js';
    import ReturnHome from '../components/ReturnHome.vue';
    import Hero from '../components/lotr/Hero.vue';
    import Movies from '../components/lotr/Movies.vue';
    import Characters from '../components/lotr/Characters.vue';
    let selected = {
        
    };

    let view = ref({
        selected: 'character',
        message: 'show movie info'
    });

    const changeView = () => {
        if (view.value.selected === 'character') {
            view.value = {
                selected: 'movie',
                message: 'search for characters'
            };
        } else {
            view.value = {
                selected: 'character',
                message: 'show movie info'
            }; 
        }
    };

    onMounted(async () => {
        const movieQuery = await axios.get(
            'https://www.YoussefElzein.com/api/lotr/movie',
            {
                params: {
                    phrase: ''
                }
            }
        );

        lotrMovies.value = movieQuery.data.results;
    });
</script>

<template>
    <main>
        <ReturnHome />
        <Hero />
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <a @click='changeView()'>
                    {{ view.message }}
                </a>
            </div>
        </div>
        <Characters v-if='view.selected === "character"' />
        <Movies v-else='view.selected === "movie"' />
    </main>
</template>

<style scoped>
    main {
        font-family: RingBearer Medium;
        min-height: 100vh;
        padding-bottom: 10rem;
    }

    a {
        font-size: 1.15rem;
        color: var(--blue);
    }

    a:hover {
        color: var(--magenta);
    }
</style>
