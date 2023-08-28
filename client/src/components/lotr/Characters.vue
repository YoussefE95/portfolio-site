<script setup>
    import axios from 'axios';
    import { ref } from 'vue';
    import { lotrMovies } from '../store.js';
    import Character from './Character.vue';

    let phrase = ref('');
    let searchResults = ref([]);
    let selectedCharacter = ref({});

    const characterSearch = async () => {
        if (phrase.value !== '') {
            const characterQuery = await axios.get(
                'https://www.YoussefElzein.com/api/lotr/character',
                {
                    params: {
                        phrase: phrase.value
                    }
                }
            );

            searchResults.value = characterQuery.data.results;
            clearSelected();
        }
    };

    const characterSelect = async (id) => {
        const detailsQuery = await axios.get(
            'https://www.YoussefElzein.com/api/lotr/character/details',
            {
                params: {
                    id
                }
            }
        );

        selectedCharacter.value = searchResults.value.find((character) => {
            return character._id === id;
        });
        selectedCharacter.value.quotes = detailsQuery.data.map((quote) => {
            return {
                dialog: quote.dialog,
                movie: lotrMovies.value.find((movie) => {
                    return movie._id === quote.movie
                })
            }
        });
    };

    const clearSelected = () => {
        selectedCharacter.value = {};
    };
</script>

<template>
    <div class='characters'>
        <form @submit.prevent='characterSearch'>
            <div class='field has-addons has-addons-centered'>
                <div class='control'>
                    <input class='input' type='text' v-model='phrase' />
                </div>
                <div class='control'>
                    <input class='button' type='submit' value='search' />
                </div>
            </div>
        </form>

        <div v-if='Object.keys(selectedCharacter).length !== 0'>
            <div class='columns is-centered'>
                <div class='column has-text-centered'>
                    <a @click='clearSelected()'>
                        Return to Search Results
                    </a>
                </div>
            </div>
            <Character v-bind='selectedCharacter' />
        </div>
        <div v-else-if='searchResults.length !== 0'>
            <div class='columns is-centered' v-for='result in searchResults'>
                <div class='column has-text-centered'>
                    <a @click='characterSelect(result._id)'>
                        {{ result.name }}
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .characters {
        padding: 3rem;
    }

    .input, .button, a {
        font-family: RingBearer Medium;
        font-size: 1.15rem;
    }

    .input, .button {
        border-color: var(--black);
        margin-bottom: 2rem;
    }

    .input {
        background: var(--background);
        color: var(--foreground);
    }

    .button {
        background: var(--blue);
        color: var(--background);
    }

    .button:hover {
        background: var(--magenta);
    }

    a {
        color: var(--blue);
    }

    a:hover {
        color: var(--magenta);
    }
</style>
