<script setup>
    const props = defineProps([
        'title',
        'thumbnail',
        'description',
        'demoLink',
        'gitLink'
    ]);
</script>

<template>
    <div class='card'>
        <header class='card-header'>
            <p class='card-header-title is-centered'>
                {{ title }}
            </p>
        </header>
        <div class='card-content'>
            <p class='content'>
                {{ description }}
            </p>
        </div>
        <footer class='card-footer'>
            <router-link class='card-footer-item' :to='demoLink'>
                Demo
            </router-link>
            <a class='card-footer-item' :href='gitLink' rel='noopener noreferrer'>
                GitHub
            </a>
        </footer>
    </div>
</template>

<style scoped>
    .card {
        font-family: Roboto;
        background: var(--backgroundAlt);
        box-shadow: 0px 0px 6px var(--black);
    }

    .card-header-title {
        font-size: 1.2rem;
        color: var(--foreground);
        border-bottom: 1px solid var(--foregroundAlt);
    }

    .card-content {
        font-size: 1.15rem;
        min-height: 215px;
        max-height: 215px;
        color: var(--heroText);
        background-image: linear-gradient(
            135deg,
            var(--cardGrad),
            var(--cardGrad)
            ), v-bind(thumbnail);
        background-size: cover;
        background-position: center;
    }

    .card-footer {
        border-color: var(--foregroundAlt);
    }

    .card-footer-item {
        color: var(--blue);
        border-color: var(--foregroundAlt);
    }

    .card-footer-item:hover {
        color: var(--backgroundAlt);
        background: var(--magenta);
        border-color: var(--magenta);
    }
</style>
