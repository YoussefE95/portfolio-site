<script setup>
    import { lotrMovies } from '../store.js';
    import Movie from './Movie.vue';

    const getMovie = (name) => {
        return lotrMovies.value.find(movie => movie.name === name);
    };
</script>

<template>
    <div class='movies' v-if='Object.keys(lotrMovies).length !== 0'>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Fellowship of the Ring")' />
            </div>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Two Towers")' />
            </div>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Return of the King")' />
            </div>
        </div>
        <div class='columns is-centered'>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Unexpected Journey")' />
            </div>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Desolation of Smaug")' />
            </div>
            <div class='column has-text-centered'>
                <Movie v-bind='getMovie("The Battle of the Five Armies")' />
            </div>
        </div>
    </div>
</template>

<style scoped>
    .movies {
        padding: 3rem;
    }
</style>
