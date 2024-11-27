<script setup>
import About from '../components/home/About.vue';
import Hero from '../components/home/Hero.vue';
import Links from '../components/home/Links.vue';
import Work from '../components/home/Work.vue';
</script>

<template>
    <main>
        <Hero />
        <Links />
        <Work />
        <!-- <About /> -->
    </main>
</template>

<style>
.section-title {
    font-size: 1.5rem;
    font-weight: bold;
    padding-bottom: 2.5rem;
}

.section {
    padding: 8rem 1.25rem;
}
</style>
