<script setup>
    import { onMounted, ref } from 'vue';
    const props = defineProps([
        'name',
        'height',
        'hair',
        'gender',
        'race',
        'realm',
        'birth',
        'death',
        'quotes'
    ]);

    let quote = ref('');
    let movie = ref('');

    const newQuote = () => {
        const randomIndex = Math.floor(Math.random() * props.quotes.length);
        quote.value = props.quotes[randomIndex].dialog;
        movie.value = props.quotes[randomIndex].movie.name;
    };

    onMounted(() => {
        newQuote();
    });
</script>

<template>
    <div class='columns is-centered is-vcentered'>
        <div class='column has-text-centered'>
            <h2>{{ name }}</h2>
        </div>
    </div>
    <div class='columns is-centered is-vcentered'>
        <div class='column has-text-centered'>
            <h3>
                <p v-if='height && height !== "NaN"'>
                    {{ height.toLowerCase() }},
                </p>
                <p v-if='hair && hair !== "NaN"'>
                    {{ hair.toLowerCase() }} haired,
                </p>
                <p v-if='gender && gender !== "NaN"'>
                    {{ gender.toLowerCase() }},
                </p>
                <p v-if='race && race !== "NaN"'>
                    {{ race.toLowerCase() }}
                </p>
            </h3>
            <h3>
                <p v-if='realm && realm !== "NaN"'>
                    from: {{ realm.toLowerCase() }}
                </p>
            </h3>
        </div>
        <div class='column has-text-centered'>
            <h3>
                <p v-if='birth && birth !== "NaN"'>
                    born: {{ birth.toLowerCase() }}
                </p>
            </h3>
            <h3>
                <p v-if='death && death !== "NaN"'>
                    {{ death.includes('alive') ? '' : 'died:' }}
                    {{ death.toLowerCase() }}
                </p>
            </h3>
        </div>
    </div>
    <div class='columns is-centered'>
        <div class='column has-text-centered'>
            <div class='quote'>
                {{ quote }}
            </div>
             <div class='movie'>
                {{ movie }}
            </div>
            <input class='button' value='new quote' @click='newQuote()'/>
        </div>
    </div>
</template>

<style scoped>
    h2, p, .button, .movie {
        font-family: RingBearer Medium;
        color: var(--foreground);
    }

    h2 {
        font-weight: bold;
        font-size: 1.5rem;
    }

    p {
        display: inline;
        font-size: 1.25rem;
    }

    .button {
        color: var(--background);
        border-color: var(--blue);
        background: var(--blue);
        width: 8rem;
    }

    .button:hover {
        color: var(--background);
        border-color: var(--magenta);
        background: var(--magenta);
    }

    .quote { 
        font-family: Bilbo;
        font-size: 2.25rem;
        color: var(--foreground);
        padding-top: 2rem;
    }

    .movie {
         font-size: 1.35rem;
         margin-bottom: 1rem;
    }
</style>
